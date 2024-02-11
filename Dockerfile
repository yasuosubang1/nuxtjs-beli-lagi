# Use the official Node.js 20 LTS image as the base image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the application code to the working directory
COPY . .

# Install dependencies
RUN npm install 

# Build the Nuxt.js application
RUN npm run build

# Expose the port that the application will run on
EXPOSE 3000

# Set the command to run the application
CMD ["npm", "run", "start"]
