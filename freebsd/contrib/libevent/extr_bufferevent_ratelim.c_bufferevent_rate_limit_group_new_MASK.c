#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct event_base {int dummy; } ;
struct ev_token_bucket_cfg {int /*<<< orphan*/  tick_timeout; } ;
struct bufferevent_rate_limit_group {int /*<<< orphan*/  weakrand_seed; int /*<<< orphan*/  lock; int /*<<< orphan*/  master_refill_event; int /*<<< orphan*/  rate_limit; int /*<<< orphan*/  members; int /*<<< orphan*/  rate_limit_cfg; } ;
typedef  int /*<<< orphan*/  ev_uint32_t ;
typedef  scalar_t__ ev_intptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVTHREAD_LOCKTYPE_RECURSIVE ; 
 int EV_FINALIZE ; 
 int EV_PERSIST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bev_group_refill_callback_ ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent_rate_limit_group*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*,struct ev_token_bucket_cfg const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ev_token_bucket_cfg const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct event_base*,int,int,int /*<<< orphan*/ ,struct bufferevent_rate_limit_group*) ; 
 int /*<<< orphan*/  FUNC7 (struct event_base*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct ev_token_bucket_cfg const*,int) ; 
 struct bufferevent_rate_limit_group* FUNC10 (int,int) ; 

struct bufferevent_rate_limit_group *
FUNC11(struct event_base *base,
    const struct ev_token_bucket_cfg *cfg)
{
	struct bufferevent_rate_limit_group *g;
	struct timeval now;
	ev_uint32_t tick;

	FUNC7(base, &now);
	tick = FUNC3(&now, cfg);

	g = FUNC10(1, sizeof(struct bufferevent_rate_limit_group));
	if (!g)
		return NULL;
	FUNC9(&g->rate_limit_cfg, cfg, sizeof(g->rate_limit_cfg));
	FUNC1(&g->members);

	FUNC4(&g->rate_limit, cfg, tick, 0);

	FUNC6(&g->master_refill_event, base, -1, EV_PERSIST|EV_FINALIZE,
	    bev_group_refill_callback_, g);
	/*XXXX handle event_add failure */
	FUNC5(&g->master_refill_event, &cfg->tick_timeout);

	FUNC0(g->lock, EVTHREAD_LOCKTYPE_RECURSIVE);

	FUNC2(g, 64);

	FUNC8(&g->weakrand_seed,
	    (ev_uint32_t) ((now.tv_sec + now.tv_usec) + (ev_intptr_t)g));

	return g;
}