FROM  maven:3.6.3-openjdk-8 
WORKDIR /
EXPOSE 8125
ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
CMD sleep 150 && mvn sonar:sonar 
mvn sonar:sonar \
  -Dsonar.projectKey=dockersonarqube \
  -Dsonar.host.url=http://10.11.0.174:9019 \
  -Dsonar.login=590e97d60f6ab68f10034856c84a8e4e0478eab7
