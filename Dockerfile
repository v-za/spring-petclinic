FROM openjdk:8u191-jre-alpine
MAINTAINER "Chris Jones <christopher.jones@depaul.edu>"

# Phase 1
#ADD target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar .
#EXPOSE 8080/tcp
#ENTRYPOINT ["java", "-jar", "spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar"]

# Phase 2
ADD target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar .
EXPOSE 8080/tcp
ENTRYPOINT ["java", "-jar", "spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar", "--spring.profiles.active=mysql"]

# Phase 3
#ADD wait-for.sh .
#ADD target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar .
#EXPOSE 8080/tcp
