
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int one ;
typedef int evutil_socket_t ;
typedef int ev_socklen_t ;


 int IPPROTO_TCP ;
 int TCP_DEFER_ACCEPT ;
 int setsockopt (int ,int ,int ,int*,int ) ;

int
evutil_make_tcp_listen_socket_deferred(evutil_socket_t sock)
{
 return 0;
}
