
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct evconnlistener {int dummy; } ;
typedef scalar_t__ evutil_socket_t ;
typedef int ev_socklen_t ;


 scalar_t__ evconnlistener_get_fd (struct evconnlistener*) ;
 int getsockname (scalar_t__,struct sockaddr*,int *) ;

int
regress_get_listener_addr(struct evconnlistener *lev,
    struct sockaddr *sa, ev_socklen_t *socklen)
{
 evutil_socket_t s = evconnlistener_get_fd(lev);
 if (s <= 0)
  return -1;
 return getsockname(s, sa, socklen);
}
