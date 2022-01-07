
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int state; } ;
typedef int evutil_socket_t ;


 int EVCON_DISCONNECTED ;
 int evhttp_connection_connect_ (struct evhttp_connection*) ;

__attribute__((used)) static void
evhttp_connection_retry(evutil_socket_t fd, short what, void *arg)
{
 struct evhttp_connection *evcon = arg;

 evcon->state = EVCON_DISCONNECTED;
 evhttp_connection_connect_(evcon);
}
