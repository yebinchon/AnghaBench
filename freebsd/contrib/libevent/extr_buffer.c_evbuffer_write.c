
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int evutil_socket_t ;


 int evbuffer_write_atmost (struct evbuffer*,int ,int) ;

int
evbuffer_write(struct evbuffer *buffer, evutil_socket_t fd)
{
 return evbuffer_write_atmost(buffer, fd, -1);
}
