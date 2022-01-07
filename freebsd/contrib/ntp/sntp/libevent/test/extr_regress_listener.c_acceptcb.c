
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct evconnlistener {int dummy; } ;
typedef int evutil_socket_t ;


 int TT_BLATHER (char*) ;
 int evconnlistener_disable (struct evconnlistener*) ;
 int evutil_closesocket (int ) ;

__attribute__((used)) static void
acceptcb(struct evconnlistener *listener, evutil_socket_t fd,
    struct sockaddr *addr, int socklen, void *arg)
{
 int *ptr = arg;
 --*ptr;
 TT_BLATHER(("Got one for %p", ptr));
 evutil_closesocket(fd);

 if (! *ptr)
  evconnlistener_disable(listener);
}
