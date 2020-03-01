from ubuntu:16.04


RUN apt-get update -y && \
    apt-get install -y python && \
    apt-get install -y python-pip && \
    apt-get install git  -y && \
    git clone https://github.com/umesh417/S3_Uploader.git &&\
    cd S3_Uploader && \
    pip install -r requirements.txt && \
    export APP_SETTINGS="config.DevelopmentConfig" && \
    export export SECRET_KEY="your-random-secret-key" && \
    export S3_BUCKET="your-bucket-name"  && \
    export S3_KEY="your-aws-secret-key"  && \
    export S3_SECRET_ACCESS_KEY="your-aws-secret-access-key" && \
    export FLASK_APP=app.py


WORKDIR /S3_Uploader

CMD python app.py



    
       
