
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int off; int buffer; } ;
struct bufferevent {int dummy; } ;


 int bufferevent_write (struct bufferevent*,int ,int ) ;
 int evbuffer_drain (struct evbuffer*,int ) ;

int
bufferevent_write_buffer(struct bufferevent *bufev, struct evbuffer *buf)
{
 int res;

 res = bufferevent_write(bufev, buf->buffer, buf->off);
 if (res != -1)
  evbuffer_drain(buf, buf->off);

 return (res);
}
