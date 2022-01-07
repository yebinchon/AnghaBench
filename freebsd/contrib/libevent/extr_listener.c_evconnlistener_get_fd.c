
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evconnlistener {TYPE_1__* ops; } ;
typedef int evutil_socket_t ;
struct TYPE_2__ {int (* getfd ) (struct evconnlistener*) ;} ;


 int LOCK (struct evconnlistener*) ;
 int UNLOCK (struct evconnlistener*) ;
 int stub1 (struct evconnlistener*) ;

evutil_socket_t
evconnlistener_get_fd(struct evconnlistener *lev)
{
 evutil_socket_t fd;
 LOCK(lev);
 fd = lev->ops->getfd(lev);
 UNLOCK(lev);
 return fd;
}
