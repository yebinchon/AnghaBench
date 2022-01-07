
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_12__ {int ev_base; } ;
struct bufferevent_private {int read_suspended; int write_suspended; TYPE_5__ bev; TYPE_1__* rate_limiting; } ;
typedef int evutil_socket_t ;
struct TYPE_11__ {int tick_timeout; } ;
struct TYPE_10__ {scalar_t__ read_limit; scalar_t__ write_limit; } ;
struct TYPE_9__ {TYPE_3__* cfg; int refill_bucket_event; TYPE_2__ limit; } ;


 int BEV_LOCK (TYPE_5__*) ;
 int BEV_SUSPEND_BW ;
 int BEV_UNLOCK (TYPE_5__*) ;
 int bufferevent_unsuspend_read_ (TYPE_5__*,int) ;
 int bufferevent_unsuspend_write_ (TYPE_5__*,int) ;
 unsigned int ev_token_bucket_get_tick_ (struct timeval*,TYPE_3__*) ;
 int ev_token_bucket_update_ (TYPE_2__*,TYPE_3__*,unsigned int) ;
 int event_add (int *,int *) ;
 int event_base_gettimeofday_cached (int ,struct timeval*) ;

__attribute__((used)) static void
bev_refill_callback_(evutil_socket_t fd, short what, void *arg)
{
 unsigned tick;
 struct timeval now;
 struct bufferevent_private *bev = arg;
 int again = 0;
 BEV_LOCK(&bev->bev);
 if (!bev->rate_limiting || !bev->rate_limiting->cfg) {
  BEV_UNLOCK(&bev->bev);
  return;
 }


 event_base_gettimeofday_cached(bev->bev.ev_base, &now);
 tick = ev_token_bucket_get_tick_(&now,
     bev->rate_limiting->cfg);
 ev_token_bucket_update_(&bev->rate_limiting->limit,
     bev->rate_limiting->cfg,
     tick);


 if ((bev->read_suspended & BEV_SUSPEND_BW)) {
  if (bev->rate_limiting->limit.read_limit > 0)
   bufferevent_unsuspend_read_(&bev->bev, BEV_SUSPEND_BW);
  else
   again = 1;
 }
 if ((bev->write_suspended & BEV_SUSPEND_BW)) {
  if (bev->rate_limiting->limit.write_limit > 0)
   bufferevent_unsuspend_write_(&bev->bev, BEV_SUSPEND_BW);
  else
   again = 1;
 }
 if (again) {







  event_add(&bev->rate_limiting->refill_bucket_event,
      &bev->rate_limiting->cfg->tick_timeout);
 }
 BEV_UNLOCK(&bev->bev);
}
