
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct bufferevent {struct evbuffer* input; } ;



struct evbuffer *
bufferevent_get_input(struct bufferevent *bufev)
{
 return bufev->input;
}
