
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct bufferevent_private {int write_suspended; int read_suspended; TYPE_4__* rate_limiting; int bev; } ;
typedef scalar_t__ ev_ssize_t ;
struct TYPE_11__ {scalar_t__ write_limit; } ;
struct TYPE_13__ {scalar_t__ write_suspended; TYPE_3__ rate_limit; int total_written; } ;
struct TYPE_9__ {scalar_t__ write_limit; } ;
struct TYPE_12__ {TYPE_5__* group; int refill_bucket_event; TYPE_2__* cfg; TYPE_1__ limit; } ;
struct TYPE_10__ {int tick_timeout; } ;


 int BEV_SUSPEND_BW ;
 int LOCK_GROUP (TYPE_5__*) ;
 int UNLOCK_GROUP (TYPE_5__*) ;
 int bev_group_suspend_writing_ (TYPE_5__*) ;
 int bev_group_unsuspend_writing_ (TYPE_5__*) ;
 int bufferevent_suspend_write_ (int *,int) ;
 int bufferevent_unsuspend_write_ (int *,int) ;
 scalar_t__ event_add (int *,int *) ;
 int event_del (int *) ;

int
bufferevent_decrement_write_buckets_(struct bufferevent_private *bev, ev_ssize_t bytes)
{

 int r = 0;

 if (!bev->rate_limiting)
  return 0;

 if (bev->rate_limiting->cfg) {
  bev->rate_limiting->limit.write_limit -= bytes;
  if (bev->rate_limiting->limit.write_limit <= 0) {
   bufferevent_suspend_write_(&bev->bev, BEV_SUSPEND_BW);
   if (event_add(&bev->rate_limiting->refill_bucket_event,
    &bev->rate_limiting->cfg->tick_timeout) < 0)
    r = -1;
  } else if (bev->write_suspended & BEV_SUSPEND_BW) {
   if (!(bev->read_suspended & BEV_SUSPEND_BW))
    event_del(&bev->rate_limiting->refill_bucket_event);
   bufferevent_unsuspend_write_(&bev->bev, BEV_SUSPEND_BW);
  }
 }

 if (bev->rate_limiting->group) {
  LOCK_GROUP(bev->rate_limiting->group);
  bev->rate_limiting->group->rate_limit.write_limit -= bytes;
  bev->rate_limiting->group->total_written += bytes;
  if (bev->rate_limiting->group->rate_limit.write_limit <= 0) {
   bev_group_suspend_writing_(bev->rate_limiting->group);
  } else if (bev->rate_limiting->group->write_suspended) {
   bev_group_unsuspend_writing_(bev->rate_limiting->group);
  }
  UNLOCK_GROUP(bev->rate_limiting->group);
 }

 return r;
}
