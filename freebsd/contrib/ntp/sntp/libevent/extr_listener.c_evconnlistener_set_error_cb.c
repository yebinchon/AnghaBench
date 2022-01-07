
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evconnlistener {int errorcb; } ;
typedef int evconnlistener_errorcb ;


 int LOCK (struct evconnlistener*) ;
 int UNLOCK (struct evconnlistener*) ;

void
evconnlistener_set_error_cb(struct evconnlistener *lev,
    evconnlistener_errorcb errorcb)
{
 LOCK(lev);
 lev->errorcb = errorcb;
 UNLOCK(lev);
}
