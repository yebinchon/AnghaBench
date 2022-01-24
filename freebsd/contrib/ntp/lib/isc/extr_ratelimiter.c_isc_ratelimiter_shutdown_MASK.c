#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_task_t ;
struct TYPE_8__ {int /*<<< orphan*/ * ev_sender; int /*<<< orphan*/  ev_attributes; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * task; TYPE_2__ shutdownevent; int /*<<< orphan*/  timer; int /*<<< orphan*/  pending; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ isc_ratelimiter_t ;
typedef  TYPE_2__ isc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_EVENTATTR_CANCELED ; 
 int /*<<< orphan*/  ISC_FALSE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ev_link ; 
 int /*<<< orphan*/  isc_ratelimiter_shuttingdown ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isc_timertype_inactive ; 

void
FUNC7(isc_ratelimiter_t *rl) {
	isc_event_t *ev;
	isc_task_t *task;
	FUNC2(&rl->lock);
	rl->state = isc_ratelimiter_shuttingdown;
	(void)FUNC6(rl->timer, isc_timertype_inactive,
			      NULL, NULL, ISC_FALSE);
	while ((ev = FUNC0(rl->pending)) != NULL) {
		FUNC1(rl->pending, ev, ev_link);
		ev->ev_attributes |= ISC_EVENTATTR_CANCELED;
		task = ev->ev_sender;
		FUNC4(task, &ev);
	}
	FUNC5(&rl->timer);
	/*
	 * Send an event to our task.  The delivery of this event
	 * indicates that no more timer events will be delivered.
	 */
	ev = &rl->shutdownevent;
	FUNC4(rl->task, &ev);

	FUNC3(&rl->lock);
}