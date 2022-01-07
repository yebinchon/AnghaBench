
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {scalar_t__ state; int bind_port; } ;
typedef int ev_uint16_t ;


 scalar_t__ EVCON_DISCONNECTED ;
 int EVUTIL_ASSERT (int) ;

void
evhttp_connection_set_local_port(struct evhttp_connection *evcon,
    ev_uint16_t port)
{
 EVUTIL_ASSERT(evcon->state == EVCON_DISCONNECTED);
 evcon->bind_port = port;
}
