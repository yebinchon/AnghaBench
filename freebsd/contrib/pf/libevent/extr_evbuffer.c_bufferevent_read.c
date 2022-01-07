
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {size_t off; int buffer; } ;
struct bufferevent {struct evbuffer* input; } ;


 int evbuffer_drain (struct evbuffer*,size_t) ;
 int memcpy (void*,int ,size_t) ;

size_t
bufferevent_read(struct bufferevent *bufev, void *data, size_t size)
{
 struct evbuffer *buf = bufev->input;

 if (buf->off < size)
  size = buf->off;


 memcpy(data, buf->buffer, size);

 if (size)
  evbuffer_drain(buf, size);

 return (size);
}
