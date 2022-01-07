
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bufferevent_private {int read_suspended; TYPE_3__* rate_limiting; } ;
struct bufferevent {int dummy; } ;
typedef scalar_t__ ev_ssize_t ;
struct TYPE_4__ {scalar_t__ write_limit; } ;
struct TYPE_6__ {int refill_bucket_event; TYPE_2__* cfg; TYPE_1__ limit; } ;
struct TYPE_5__ {int tick_timeout; } ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_SUSPEND_BW ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 int EVUTIL_ASSERT (int) ;
 int bufferevent_suspend_write_ (struct bufferevent*,int) ;
 int bufferevent_unsuspend_write_ (struct bufferevent*,int) ;
 scalar_t__ event_add (int *,int *) ;
 int event_del (int *) ;

int
bufferevent_decrement_write_limit(struct bufferevent *bev, ev_ssize_t decr)
{


 int r = 0;
 ev_ssize_t old_limit, new_limit;
 struct bufferevent_private *bevp;
 BEV_LOCK(bev);
 bevp = BEV_UPCAST(bev);
 EVUTIL_ASSERT(bevp->rate_limiting && bevp->rate_limiting->cfg);
 old_limit = bevp->rate_limiting->limit.write_limit;

 new_limit = (bevp->rate_limiting->limit.write_limit -= decr);
 if (old_limit > 0 && new_limit <= 0) {
  bufferevent_suspend_write_(bev, BEV_SUSPEND_BW);
  if (event_add(&bevp->rate_limiting->refill_bucket_event,
   &bevp->rate_limiting->cfg->tick_timeout) < 0)
   r = -1;
 } else if (old_limit <= 0 && new_limit > 0) {
  if (!(bevp->read_suspended & BEV_SUSPEND_BW))
   event_del(&bevp->rate_limiting->refill_bucket_event);
  bufferevent_unsuspend_write_(bev, BEV_SUSPEND_BW);
 }

 BEV_UNLOCK(bev);
 return r;
}
