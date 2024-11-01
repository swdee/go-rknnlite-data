#!/bin/bash

# download mobilenet_v1 data files
wget https://github.com/airockchip/rknn-toolkit2/raw/v1.6.0/rknpu2/examples/rknn_mobilenet_demo/model/cat_224x224.jpg
wget https://github.com/airockchip/rknn-toolkit2/raw/v1.6.0/rknpu2/examples/rknn_mobilenet_demo/model/dog_224x224.jpg
wget -O mobilenet_v1-rk3588.rknn https://github.com/airockchip/rknn-toolkit2/raw/v1.6.0/rknpu2/examples/rknn_mobilenet_demo/model/RK3588/mobilenet_v1.rknn

# get imagenet sample files
git clone https://github.com/EliSchwartz/imagenet-sample-images.git
mkdir imagenet
mv imagenet-sample-images/*.JPEG imagenet/
rm -rf imagenet-sample-images

# download yolov5 data files
wget -O yolov5s-640-640-rk3588.rknn https://github.com/airockchip/rknn-toolkit2/raw/v2.0.0-beta0/rknpu2/examples/rknn_yolov5_demo/model/RK3588/yolov5s-640-640.rknn
wget https://github.com/airockchip/rknn-toolkit2/raw/v1.6.0/rknpu2/examples/rknn_yolov5_demo/model/bus.jpg
wget https://github.com/airockchip/rknn-toolkit2/raw/v1.6.0/rknpu2/examples/rknn_yolov5_demo/model/coco_80_labels_list.txt

# yolov8 model was download as onnx and converted to rknn on my workstation
# onnx source https://ftrg.zbox.filez.com/v2/delivery/data/95f00b0fc900458ba134f8b180b3f7a1/examples/yolov8/yolov8s.onnx

# lprnet model was download as onnx and converted to rknn on my workstation
# onnx source https://ftrg.zbox.filez.com/v2/delivery/data/95f00b0fc900458ba134f8b180b3f7a1/examples/LPRNet/lprnet.onnx

# ppocr-rec model was download as onnx and converted to rknn on my workstations
# onnx source https://ftrg.zbox.filez.com/v2/delivery/data/95f00b0fc900458ba134f8b180b3f7a1/examples/PPOCR/ppocrv4_rec.onnx
wget https://raw.githubusercontent.com/airockchip/rknn_model_zoo/main/examples/PPOCR/PPOCR-Rec/model/ppocr_keys_v1.txt

# ppocr-det model was download as onnx and converted to rknn on my workstations
# onnx source https://ftrg.zbox.filez.com/v2/delivery/data/95f00b0fc900458ba134f8b180b3f7a1/examples/PPOCR/ppocrv4_det.onnx
wget -O ppocr-det-test.png https://raw.githubusercontent.com/airockchip/rknn_model_zoo/main/examples/PPOCR/PPOCR-Det/model/test.jpg

# get video for object tracking demo
wget https://raw.githubusercontent.com/ifzhang/ByteTrack/main/videos/palace.mp4
