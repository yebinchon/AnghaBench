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
struct event_callback {int evcb_flags; scalar_t__ evcb_pri; } ;
struct event_base {scalar_t__ nactivequeues; int /*<<< orphan*/  active_later_queue; int /*<<< orphan*/  event_count_active; int /*<<< orphan*/  event_count_active_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*) ; 
 int EVLIST_ACTIVE ; 
 int EVLIST_ACTIVE_LATER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct event_callback*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  evcb_active_next ; 

__attribute__((used)) static void
FUNC5(struct event_base *base, struct event_callback *evcb)
{
	FUNC0(base);
	if (evcb->evcb_flags & (EVLIST_ACTIVE_LATER|EVLIST_ACTIVE)) {
		/* Double insertion is possible */
		return;
	}

	FUNC2(base, evcb->evcb_flags);
	evcb->evcb_flags |= EVLIST_ACTIVE_LATER;
	base->event_count_active++;
	FUNC3(base->event_count_active_max, base->event_count_active);
	FUNC1(evcb->evcb_pri < base->nactivequeues);
	FUNC4(&base->active_later_queue, evcb, evcb_active_next);
}