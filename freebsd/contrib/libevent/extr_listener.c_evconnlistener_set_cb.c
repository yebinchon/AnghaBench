
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evconnlistener {void* user_data; scalar_t__ cb; scalar_t__ enabled; } ;
typedef scalar_t__ evconnlistener_cb ;


 int LOCK (struct evconnlistener*) ;
 int UNLOCK (struct evconnlistener*) ;
 int evconnlistener_enable (struct evconnlistener*) ;

void
evconnlistener_set_cb(struct evconnlistener *lev,
    evconnlistener_cb cb, void *arg)
{
 int enable = 0;
 LOCK(lev);
 if (lev->enabled && !lev->cb)
  enable = 1;
 lev->cb = cb;
 lev->user_data = arg;
 if (enable)
  evconnlistener_enable(lev);
 UNLOCK(lev);
}
