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
struct eventop {int (* add ) (struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  fdinfo_len; } ;
struct event_signal_map {int nentries; } ;
struct event_base {struct eventop* evsigsel; struct event_signal_map sigmap; } ;
struct event {int /*<<< orphan*/  ev_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_SIGNAL ; 
 int /*<<< orphan*/  FUNC0 (struct evmap_signal*,struct event_signal_map*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_signal_next ; 
 int FUNC3 (struct event_signal_map*,int,int) ; 
 int /*<<< orphan*/  evmap_signal ; 
 int /*<<< orphan*/  evmap_signal_init ; 
 int FUNC4 (struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC5(struct event_base *base, int sig, struct event *ev)
{
	const struct eventop *evsel = base->evsigsel;
	struct event_signal_map *map = &base->sigmap;
	struct evmap_signal *ctx = NULL;

	if (sig >= map->nentries) {
		if (FUNC3(
			map, sig, sizeof(struct evmap_signal *)) == -1)
			return (-1);
	}
	FUNC0(ctx, map, sig, evmap_signal, evmap_signal_init,
	    base->evsigsel->fdinfo_len);

	if (FUNC1(&ctx->events)) {
		if (evsel->add(base, ev->ev_fd, 0, EV_SIGNAL, NULL)
		    == -1)
			return (-1);
	}

	FUNC2(&ctx->events, ev, ev_signal_next);

	return (1);
}