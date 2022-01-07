
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ write_limit; } ;
struct bufferevent_rate_limit_group {TYPE_1__ rate_limit; } ;
typedef scalar_t__ ev_ssize_t ;


 int LOCK_GROUP (struct bufferevent_rate_limit_group*) ;
 int UNLOCK_GROUP (struct bufferevent_rate_limit_group*) ;
 int bev_group_suspend_writing_ (struct bufferevent_rate_limit_group*) ;
 int bev_group_unsuspend_writing_ (struct bufferevent_rate_limit_group*) ;

int
bufferevent_rate_limit_group_decrement_write(
 struct bufferevent_rate_limit_group *grp, ev_ssize_t decr)
{
 int r = 0;
 ev_ssize_t old_limit, new_limit;
 LOCK_GROUP(grp);
 old_limit = grp->rate_limit.write_limit;
 new_limit = (grp->rate_limit.write_limit -= decr);

 if (old_limit > 0 && new_limit <= 0) {
  bev_group_suspend_writing_(grp);
 } else if (old_limit <= 0 && new_limit > 0) {
  bev_group_unsuspend_writing_(grp);
 }

 UNLOCK_GROUP(grp);
 return r;
}
