FROM releases-docker.jfrog.io/jfrog/artifactory-oss:7.84.11
COPY system.yaml /opt/jfrog/artifactory/var/etc/system.yaml
USER root
RUN mkdir -p /opt/jfrog/artifactory/var/etc/security
RUN chmod -R 777 /opt/jfrog/artifactory/var
USER 1030
