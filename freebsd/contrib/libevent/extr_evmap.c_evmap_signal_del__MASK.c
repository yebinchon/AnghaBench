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
struct evmap_signal {int /*<<< orphan*/  events; } ;
struct eventop {int (* del ) (struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct event_signal_map {int nentries; } ;
struct event_base {struct event_signal_map sigmap; struct eventop* evsigsel; } ;
struct event {int /*<<< orphan*/  ev_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_SIGNAL ; 
 int /*<<< orphan*/  FUNC0 (struct evmap_signal*,struct event_signal_map*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_signal_next ; 
 int /*<<< orphan*/  evmap_signal ; 
 int FUNC3 (struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC4(struct event_base *base, int sig, struct event *ev)
{
	const struct eventop *evsel = base->evsigsel;
	struct event_signal_map *map = &base->sigmap;
	struct evmap_signal *ctx;

	if (sig >= map->nentries)
		return (-1);

	FUNC0(ctx, map, sig, evmap_signal);

	FUNC2(ev, ev_signal_next);

	if (FUNC1(&ctx->events) == NULL) {
		if (evsel->del(base, ev->ev_fd, 0, EV_SIGNAL, NULL) == -1)
			return (-1);
	}

	return (1);
}