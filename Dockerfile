FROM tomcat:8
# Take the war and copy to webapps of tomcat
ADD settings.xml /usr/local/tomcat/conf/
ADD tomcat-users.xml /usr/local/tomcat/conf/
RUN mkdir /usr/local/tomcat/webapps/
COPY /target/*.war /usr/local/tomcat/webapps/root.war
