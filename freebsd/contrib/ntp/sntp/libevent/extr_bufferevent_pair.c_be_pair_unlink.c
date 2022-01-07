
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent_pair {TYPE_1__* partner; TYPE_1__* unlinked_partner; } ;
struct bufferevent {int dummy; } ;
struct TYPE_2__ {int * partner; } ;


 struct bufferevent_pair* upcast (struct bufferevent*) ;

__attribute__((used)) static void
be_pair_unlink(struct bufferevent *bev)
{
 struct bufferevent_pair *bev_p = upcast(bev);

 if (bev_p->partner) {
  bev_p->unlinked_partner = bev_p->partner;
  bev_p->partner->partner = ((void*)0);
  bev_p->partner = ((void*)0);
 }
}
