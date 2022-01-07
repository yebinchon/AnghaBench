
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {void (* closecb ) (struct evhttp_connection*,void*) ;void* closecb_arg; } ;



void
evhttp_connection_set_closecb(struct evhttp_connection *evcon,
    void (*cb)(struct evhttp_connection *, void *), void *cbarg)
{
 evcon->closecb = cb;
 evcon->closecb_arg = cbarg;
}
