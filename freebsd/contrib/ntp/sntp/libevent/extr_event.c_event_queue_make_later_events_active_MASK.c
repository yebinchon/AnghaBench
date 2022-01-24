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
struct event_callback {int evcb_flags; size_t evcb_pri; scalar_t__ evcb_closure; } ;
struct event_base {size_t nactivequeues; int n_deferreds_queued; int /*<<< orphan*/ * activequeues; int /*<<< orphan*/  active_later_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*) ; 
 int EVLIST_ACTIVE ; 
 int EVLIST_ACTIVE_LATER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ EV_CLOSURE_CB_SELF ; 
 struct event_callback* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct event_callback*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct event_callback*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  evcb_active_next ; 

__attribute__((used)) static void
FUNC5(struct event_base *base)
{
	struct event_callback *evcb;
	FUNC0(base);

	while ((evcb = FUNC2(&base->active_later_queue))) {
		FUNC4(&base->active_later_queue, evcb, evcb_active_next);
		evcb->evcb_flags = (evcb->evcb_flags & ~EVLIST_ACTIVE_LATER) | EVLIST_ACTIVE;
		FUNC1(evcb->evcb_pri < base->nactivequeues);
		FUNC3(&base->activequeues[evcb->evcb_pri], evcb, evcb_active_next);
		base->n_deferreds_queued += (evcb->evcb_closure == EV_CLOSURE_CB_SELF);
	}
}