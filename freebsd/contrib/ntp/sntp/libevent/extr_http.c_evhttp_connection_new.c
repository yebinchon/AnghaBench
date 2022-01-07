
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int dummy; } ;


 struct evhttp_connection* evhttp_connection_base_new (int *,int *,char const*,unsigned short) ;

struct evhttp_connection *
evhttp_connection_new(const char *address, unsigned short port)
{
 return (evhttp_connection_base_new(((void*)0), ((void*)0), address, port));
}
