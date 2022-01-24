#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void (* evcb_cbfinalize ) (struct event_callback*,void*) ;} ;
struct event_callback {int evcb_flags; TYPE_1__ evcb_cb_union; int /*<<< orphan*/  evcb_closure; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_DEL_NOBLOCK ; 
 int EVLIST_FINALIZING ; 
 int EVLIST_INIT ; 
 int /*<<< orphan*/  EV_CLOSURE_CB_FINALIZE ; 
 int /*<<< orphan*/  FUNC0 (struct event_base*,struct event_callback*) ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*,struct event_callback*,int /*<<< orphan*/ ) ; 
 struct event* FUNC2 (struct event_callback*) ; 
 int /*<<< orphan*/  FUNC3 (struct event*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct event_base *base, unsigned flags, struct event_callback *evcb, void (*cb)(struct event_callback *, void *))
{
	struct event *ev = NULL;
	if (evcb->evcb_flags & EVLIST_INIT) {
		ev = FUNC2(evcb);
		FUNC3(ev, EVENT_DEL_NOBLOCK);
	} else {
		FUNC1(base, evcb, 0); /*XXX can this fail?*/
	}

	evcb->evcb_closure = EV_CLOSURE_CB_FINALIZE;
	evcb->evcb_cb_union.evcb_cbfinalize = cb;
	FUNC0(base, evcb); /* XXX can this really fail?*/
	evcb->evcb_flags |= EVLIST_FINALIZING;
}