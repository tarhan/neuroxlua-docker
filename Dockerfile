FROM tarhan/luajit

RUN set -ex \
 && apk add --no-cache \
      libev \
 && apk add --no-cache --virtual .build-deps \
      build-base \
      cmake \
      git \
      libev-dev \
 && luarocks install lualogging \
 && luarocks install rapidjson \
 && luarocks install loowy \
 && apk del .build-deps


