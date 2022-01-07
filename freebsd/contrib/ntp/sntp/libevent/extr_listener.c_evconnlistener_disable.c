
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evconnlistener {TYPE_1__* ops; scalar_t__ enabled; } ;
struct TYPE_2__ {int (* disable ) (struct evconnlistener*) ;} ;


 int LOCK (struct evconnlistener*) ;
 int UNLOCK (struct evconnlistener*) ;
 int stub1 (struct evconnlistener*) ;

int
evconnlistener_disable(struct evconnlistener *lev)
{
 int r;
 LOCK(lev);
 lev->enabled = 0;
 r = lev->ops->disable(lev);
 UNLOCK(lev);
 return r;
}
