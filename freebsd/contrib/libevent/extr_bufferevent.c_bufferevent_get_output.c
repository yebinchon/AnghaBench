
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct bufferevent {struct evbuffer* output; } ;



struct evbuffer *
bufferevent_get_output(struct bufferevent *bufev)
{
 return bufev->output;
}
