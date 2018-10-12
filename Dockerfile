FROM node:7
COPY startup.sh /
COPY confd-0.16.0-linux-amd64 /opt/confd/bin/confd
COPY files /etc/confd/
RUN chmod +x /opt/confd/bin/confd
RUN chmod +x /startup.sh
CMD ["/startup.sh"]

