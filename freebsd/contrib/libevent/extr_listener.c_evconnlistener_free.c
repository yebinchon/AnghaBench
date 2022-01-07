
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evconnlistener {TYPE_1__* ops; int * errorcb; int * cb; } ;
struct TYPE_2__ {int (* shutdown ) (struct evconnlistener*) ;} ;


 int LOCK (struct evconnlistener*) ;
 int listener_decref_and_unlock (struct evconnlistener*) ;
 int stub1 (struct evconnlistener*) ;

void
evconnlistener_free(struct evconnlistener *lev)
{
 LOCK(lev);
 lev->cb = ((void*)0);
 lev->errorcb = ((void*)0);
 if (lev->ops->shutdown)
  lev->ops->shutdown(lev);
 listener_decref_and_unlock(lev);
}
