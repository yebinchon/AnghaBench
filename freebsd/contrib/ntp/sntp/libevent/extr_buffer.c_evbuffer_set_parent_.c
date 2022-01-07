
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {struct bufferevent* parent; } ;
struct bufferevent {int dummy; } ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;

void
evbuffer_set_parent_(struct evbuffer *buf, struct bufferevent *bev)
{
 EVBUFFER_LOCK(buf);
 buf->parent = bev;
 EVBUFFER_UNLOCK(buf);
}
