
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {void (* gencb ) (struct evhttp_request*,void*) ;void* gencbarg; } ;



void
evhttp_set_gencb(struct evhttp *http,
    void (*cb)(struct evhttp_request *, void *), void *cbarg)
{
 http->gencb = cb;
 http->gencbarg = cbarg;
}
