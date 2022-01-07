
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {size_t off; size_t totallen; size_t buffer; int cbarg; int (* cb ) (struct evbuffer*,size_t,size_t,int ) ;int misalign; } ;


 int evbuffer_expand (struct evbuffer*,size_t) ;
 int memcpy (size_t,void const*,size_t) ;
 int stub1 (struct evbuffer*,size_t,size_t,int ) ;

int
evbuffer_add(struct evbuffer *buf, const void *data, size_t datlen)
{
 size_t need = buf->misalign + buf->off + datlen;
 size_t oldoff = buf->off;

 if (buf->totallen < need) {
  if (evbuffer_expand(buf, datlen) == -1)
   return (-1);
 }

 memcpy(buf->buffer + buf->off, data, datlen);
 buf->off += datlen;

 if (datlen && buf->cb != ((void*)0))
  (*buf->cb)(buf, oldoff, buf->off, buf->cbarg);

 return (0);
}
