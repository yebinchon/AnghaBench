
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct evhttp_connection {int bufev; } ;


 struct sockaddr const* bufferevent_socket_get_conn_address_ (int ) ;

const struct sockaddr*
evhttp_connection_get_addr(struct evhttp_connection *evcon)
{
 return bufferevent_socket_get_conn_address_(evcon->bufev);
}
