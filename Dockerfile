FROM amazon/aws-cli:2.9.15
WORKDIR /inuspace
COPY ./kubectl .
COPY ./get_helm.sh .
RUN chmod 755 ./get_helm.sh
ENV PATH="$PATH:/inuspace"
RUN chmod 755 ./kubectl
RUN yes| yum install openssl
RUN yes|yum install tar
RUN yes|yum install gzip
RUN ./get_helm.sh

