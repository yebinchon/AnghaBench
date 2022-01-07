
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_pair {scalar_t__ partner; } ;
struct bufferevent {int dummy; } ;


 int decref_and_unlock (struct bufferevent*) ;
 struct bufferevent* downcast (scalar_t__) ;
 int incref_and_lock (struct bufferevent*) ;
 struct bufferevent_pair* upcast (struct bufferevent*) ;

struct bufferevent *
bufferevent_pair_get_partner(struct bufferevent *bev)
{
 struct bufferevent_pair *bev_p;
 struct bufferevent *partner = ((void*)0);
 bev_p = upcast(bev);
 if (! bev_p)
  return ((void*)0);

 incref_and_lock(bev);
 if (bev_p->partner)
  partner = downcast(bev_p->partner);
 decref_and_unlock(bev);
 return partner;
}
