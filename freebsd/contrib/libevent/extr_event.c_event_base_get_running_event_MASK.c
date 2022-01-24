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
struct event_callback {int evcb_flags; } ;
struct event_base {struct event_callback* current_event; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*,int /*<<< orphan*/ ) ; 
 int EVLIST_INIT ; 
 struct event* FUNC3 (struct event_callback*) ; 
 int /*<<< orphan*/  th_base_lock ; 

struct event *
FUNC4(struct event_base *base)
{
	struct event *ev = NULL;
	FUNC0(base, th_base_lock);
	if (FUNC1(base)) {
		struct event_callback *evcb = base->current_event;
		if (evcb->evcb_flags & EVLIST_INIT)
			ev = FUNC3(evcb);
	}
	FUNC2(base, th_base_lock);
	return ev;
}