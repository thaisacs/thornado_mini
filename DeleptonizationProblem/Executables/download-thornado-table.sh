#!/bin/bash
fileid="1d5m7SxVDRKC80RUDtpyoovKTDtMSOHec"
filename="thonado-table.zip"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
