FROM centos

LABEL description="Euca Jenkins" \
version="0.1.0"

# install packages
RUN yum install -y --nogpg curl \
  httpd \
  git \
  make \
  wget \
  python-virtualenv \
  unzip \
  zip \
  java-1.8.0-openjdk \
  java-1.8.0-openjdk-devel

# install jenkins
RUN mkdir jenkie-poo
RUN pushd jenkie-poo; wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war; java -jar jenkins.war --httpPort=8080; popd

EXPOSE 8080
EXPOSE 80
EXPOSE 50000
