
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int dummy; } ;
typedef int ev_uint16_t ;


 struct evhttp_connection* evhttp_connection_base_new (int *,int *,char const*,int ) ;

struct evhttp_connection *
evhttp_connection_new(const char *address, ev_uint16_t port)
{
 return (evhttp_connection_base_new(((void*)0), ((void*)0), address, port));
}
