
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct event_base {int dummy; } ;
struct ev_token_bucket_cfg {int tick_timeout; } ;
struct bufferevent_rate_limit_group {int weakrand_seed; int lock; int master_refill_event; int rate_limit; int members; int rate_limit_cfg; } ;
typedef int ev_uint32_t ;
typedef scalar_t__ ev_intptr_t ;


 int EVTHREAD_ALLOC_LOCK (int ,int ) ;
 int EVTHREAD_LOCKTYPE_RECURSIVE ;
 int EV_FINALIZE ;
 int EV_PERSIST ;
 int LIST_INIT (int *) ;
 int bev_group_refill_callback_ ;
 int bufferevent_rate_limit_group_set_min_share (struct bufferevent_rate_limit_group*,int) ;
 int ev_token_bucket_get_tick_ (struct timeval*,struct ev_token_bucket_cfg const*) ;
 int ev_token_bucket_init_ (int *,struct ev_token_bucket_cfg const*,int ,int ) ;
 int event_add (int *,int *) ;
 int event_assign (int *,struct event_base*,int,int,int ,struct bufferevent_rate_limit_group*) ;
 int event_base_gettimeofday_cached (struct event_base*,struct timeval*) ;
 int evutil_weakrand_seed_ (int *,int ) ;
 int memcpy (int *,struct ev_token_bucket_cfg const*,int) ;
 struct bufferevent_rate_limit_group* mm_calloc (int,int) ;

struct bufferevent_rate_limit_group *
bufferevent_rate_limit_group_new(struct event_base *base,
    const struct ev_token_bucket_cfg *cfg)
{
 struct bufferevent_rate_limit_group *g;
 struct timeval now;
 ev_uint32_t tick;

 event_base_gettimeofday_cached(base, &now);
 tick = ev_token_bucket_get_tick_(&now, cfg);

 g = mm_calloc(1, sizeof(struct bufferevent_rate_limit_group));
 if (!g)
  return ((void*)0);
 memcpy(&g->rate_limit_cfg, cfg, sizeof(g->rate_limit_cfg));
 LIST_INIT(&g->members);

 ev_token_bucket_init_(&g->rate_limit, cfg, tick, 0);

 event_assign(&g->master_refill_event, base, -1, EV_PERSIST|EV_FINALIZE,
     bev_group_refill_callback_, g);

 event_add(&g->master_refill_event, &cfg->tick_timeout);

 EVTHREAD_ALLOC_LOCK(g->lock, EVTHREAD_LOCKTYPE_RECURSIVE);

 bufferevent_rate_limit_group_set_min_share(g, 64);

 evutil_weakrand_seed_(&g->weakrand_seed,
     (ev_uint32_t) ((now.tv_sec + now.tv_usec) + (ev_intptr_t)g));

 return g;
}
