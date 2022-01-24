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
struct event_base {int dummy; } ;
struct event {int ev_flags; int ev_res; struct event_base* ev_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*) ; 
 int EVLIST_ACTIVE ; 
 int EVLIST_ACTIVE_LATER ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct event*) ; 

void
FUNC3(struct event *ev, int res)
{
	struct event_base *base = ev->ev_base;
	FUNC0(base);

	if (ev->ev_flags & (EVLIST_ACTIVE|EVLIST_ACTIVE_LATER)) {
		/* We get different kinds of events, add them together */
		ev->ev_res |= res;
		return;
	}

	ev->ev_res = res;

	FUNC1(base, FUNC2(ev));
}