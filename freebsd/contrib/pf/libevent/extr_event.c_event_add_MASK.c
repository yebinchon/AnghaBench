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
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct eventop {int (* add ) (void*,struct event*) ;} ;
struct event_base {void* evbase; struct eventop* evsel; } ;
struct event {int ev_events; int ev_flags; int ev_res; int /*<<< orphan*/  ev_callback; int /*<<< orphan*/  ev_timeout; scalar_t__* ev_pncalls; scalar_t__ ev_ncalls; struct event_base* ev_base; } ;

/* Variables and functions */
 int EVLIST_ACTIVE ; 
 int EVLIST_ALL ; 
 int EVLIST_INSERTED ; 
 int EVLIST_SIGNAL ; 
 int EVLIST_TIMEOUT ; 
 int EV_READ ; 
 int EV_SIGNAL ; 
 int EV_TIMEOUT ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*,struct event*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct event_base*,struct event*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*) ; 
 int FUNC5 (void*,struct event*) ; 
 int FUNC6 (void*,struct event*) ; 
 int /*<<< orphan*/  FUNC7 (struct timeval*,struct timeval*,int /*<<< orphan*/ *) ; 

int
FUNC8(struct event *ev, struct timeval *tv)
{
	struct event_base *base = ev->ev_base;
	const struct eventop *evsel = base->evsel;
	void *evbase = base->evbase;

	FUNC1((
		 "event_add: event: %p, %s%s%scall %p",
		 ev,
		 ev->ev_events & EV_READ ? "EV_READ " : " ",
		 ev->ev_events & EV_WRITE ? "EV_WRITE " : " ",
		 tv ? "EV_TIMEOUT " : " ",
		 ev->ev_callback));

	FUNC0(!(ev->ev_flags & ~EVLIST_ALL));

	if (tv != NULL) {
		struct timeval now;

		if (ev->ev_flags & EVLIST_TIMEOUT)
			FUNC3(base, ev, EVLIST_TIMEOUT);

		/* Check if it is active due to a timeout.  Rescheduling
		 * this timeout before the callback can be executed
		 * removes it from the active list. */
		if ((ev->ev_flags & EVLIST_ACTIVE) &&
		    (ev->ev_res & EV_TIMEOUT)) {
			/* See if we are just active executing this
			 * event in a loop
			 */
			if (ev->ev_ncalls && ev->ev_pncalls) {
				/* Abort loop */
				*ev->ev_pncalls = 0;
			}
			
			FUNC3(base, ev, EVLIST_ACTIVE);
		}

		FUNC4(&now);
		FUNC7(&now, tv, &ev->ev_timeout);

		FUNC1((
			 "event_add: timeout in %d seconds, call %p",
			 tv->tv_sec, ev->ev_callback));

		FUNC2(base, ev, EVLIST_TIMEOUT);
	}

	if ((ev->ev_events & (EV_READ|EV_WRITE)) &&
	    !(ev->ev_flags & (EVLIST_INSERTED|EVLIST_ACTIVE))) {
		FUNC2(base, ev, EVLIST_INSERTED);

		return (evsel->add(evbase, ev));
	} else if ((ev->ev_events & EV_SIGNAL) &&
	    !(ev->ev_flags & EVLIST_SIGNAL)) {
		FUNC2(base, ev, EVLIST_SIGNAL);

		return (evsel->add(evbase, ev));
	}

	return (0);
}