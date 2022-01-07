
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {size_t off; int buffer; } ;


 int evbuffer_drain (struct evbuffer*,size_t) ;
 int memcpy (void*,int ,size_t) ;

int
evbuffer_remove(struct evbuffer *buf, void *data, size_t datlen)
{
 size_t nread = datlen;
 if (nread >= buf->off)
  nread = buf->off;

 memcpy(data, buf->buffer, nread);
 evbuffer_drain(buf, nread);

 return (nread);
}
