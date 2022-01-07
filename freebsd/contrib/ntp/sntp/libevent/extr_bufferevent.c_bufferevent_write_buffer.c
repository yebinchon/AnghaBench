
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct bufferevent {int output; } ;


 int evbuffer_add_buffer (int ,struct evbuffer*) ;

int
bufferevent_write_buffer(struct bufferevent *bufev, struct evbuffer *buf)
{
 if (evbuffer_add_buffer(bufev->output, buf) == -1)
  return (-1);

 return 0;
}
