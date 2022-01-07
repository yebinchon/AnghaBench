
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {struct bufferevent* (* bevcb ) (struct event_base*,void*) ;void* bevcbarg; } ;



void
evhttp_set_bevcb(struct evhttp *http,
    struct bufferevent* (*cb)(struct event_base *, void *), void *cbarg)
{
 http->bevcb = cb;
 http->bevcbarg = cbarg;
}
