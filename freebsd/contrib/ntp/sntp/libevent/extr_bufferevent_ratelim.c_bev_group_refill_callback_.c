
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_2__ {scalar_t__ read_limit; scalar_t__ write_limit; } ;
struct bufferevent_rate_limit_group {scalar_t__ min_share; TYPE_1__ rate_limit; scalar_t__ write_suspended; scalar_t__ pending_unsuspend_write; scalar_t__ read_suspended; scalar_t__ pending_unsuspend_read; int rate_limit_cfg; int master_refill_event; } ;
typedef int evutil_socket_t ;


 int LOCK_GROUP (struct bufferevent_rate_limit_group*) ;
 int UNLOCK_GROUP (struct bufferevent_rate_limit_group*) ;
 int bev_group_unsuspend_reading_ (struct bufferevent_rate_limit_group*) ;
 int bev_group_unsuspend_writing_ (struct bufferevent_rate_limit_group*) ;
 unsigned int ev_token_bucket_get_tick_ (struct timeval*,int *) ;
 int ev_token_bucket_update_ (TYPE_1__*,int *,unsigned int) ;
 int event_base_gettimeofday_cached (int ,struct timeval*) ;
 int event_get_base (int *) ;

__attribute__((used)) static void
bev_group_refill_callback_(evutil_socket_t fd, short what, void *arg)
{
 struct bufferevent_rate_limit_group *g = arg;
 unsigned tick;
 struct timeval now;

 event_base_gettimeofday_cached(event_get_base(&g->master_refill_event), &now);

 LOCK_GROUP(g);

 tick = ev_token_bucket_get_tick_(&now, &g->rate_limit_cfg);
 ev_token_bucket_update_(&g->rate_limit, &g->rate_limit_cfg, tick);

 if (g->pending_unsuspend_read ||
     (g->read_suspended && (g->rate_limit.read_limit >= g->min_share))) {
  bev_group_unsuspend_reading_(g);
 }
 if (g->pending_unsuspend_write ||
     (g->write_suspended && (g->rate_limit.write_limit >= g->min_share))){
  bev_group_unsuspend_writing_(g);
 }






 UNLOCK_GROUP(g);
}
