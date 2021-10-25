FROM golang:1.15.2
# ここは/go/src配下じゃなきゃダメ。
# 恐らくDockerはカーネルを使用。Macに依存するからここはGOPATH使わないとエラーかな。
RUN mkdir /go/src/hello
# つまりローカルファイルの配置場所なのでgopath配下でなくても大丈夫
WORKDIR /Docker/hello
# ホストファイルを追加してあげる
ADD . /Docker/hello/