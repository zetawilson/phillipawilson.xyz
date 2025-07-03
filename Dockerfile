# Use an official Node.js runtime as the base image
FROM node:20-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY . .

# Install any needed packages specified in package.json
RUN yarn install

# Copy the remaining application code


RUN yarn build 

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run your app using `npm start`
CMD ["yarn", "serve"]
