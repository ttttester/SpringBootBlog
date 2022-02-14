#FROM java:8
FROM openjdk:8-jdk-alpine
# ARG JAR_FILE
# COPY ${JAR_FILE} app.jar
COPY target/*.jar app.jar
EXPOSE 8888
ENTRYPOINT ["java","-jar","/app.jar"]
