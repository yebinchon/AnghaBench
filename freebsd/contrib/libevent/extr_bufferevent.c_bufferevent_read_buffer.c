
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct bufferevent {int input; } ;


 int evbuffer_add_buffer (struct evbuffer*,int ) ;

int
bufferevent_read_buffer(struct bufferevent *bufev, struct evbuffer *buf)
{
 return (evbuffer_add_buffer(buf, bufev->input));
}
