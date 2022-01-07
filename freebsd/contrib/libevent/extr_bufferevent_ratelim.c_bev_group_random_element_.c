
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent_rate_limit_group {int members; int n_members; int weakrand_seed; } ;
struct bufferevent_private {int dummy; } ;
struct TYPE_2__ {int next_in_group; } ;


 int EVUTIL_ASSERT (int) ;
 int LIST_EMPTY (int *) ;
 struct bufferevent_private* LIST_FIRST (int *) ;
 struct bufferevent_private* LIST_NEXT (struct bufferevent_private*,int ) ;
 int evutil_weakrand_range_ (int *,int ) ;
 TYPE_1__* rate_limiting ;

__attribute__((used)) static struct bufferevent_private *
bev_group_random_element_(struct bufferevent_rate_limit_group *group)
{
 int which;
 struct bufferevent_private *bev;



 if (!group->n_members)
  return ((void*)0);

 EVUTIL_ASSERT(! LIST_EMPTY(&group->members));

 which = evutil_weakrand_range_(&group->weakrand_seed, group->n_members);

 bev = LIST_FIRST(&group->members);
 while (which--)
  bev = LIST_NEXT(bev, rate_limiting->next_in_group);

 return bev;
}
