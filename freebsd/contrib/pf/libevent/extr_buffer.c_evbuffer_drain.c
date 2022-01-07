
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {size_t off; size_t buffer; size_t orig_buffer; int cbarg; int (* cb ) (struct evbuffer*,size_t,size_t,int ) ;scalar_t__ misalign; } ;


 int stub1 (struct evbuffer*,size_t,size_t,int ) ;

void
evbuffer_drain(struct evbuffer *buf, size_t len)
{
 size_t oldoff = buf->off;

 if (len >= buf->off) {
  buf->off = 0;
  buf->buffer = buf->orig_buffer;
  buf->misalign = 0;
  goto done;
 }

 buf->buffer += len;
 buf->misalign += len;

 buf->off -= len;

 done:

 if (buf->off != oldoff && buf->cb != ((void*)0))
  (*buf->cb)(buf, oldoff, buf->off, buf->cbarg);

}
