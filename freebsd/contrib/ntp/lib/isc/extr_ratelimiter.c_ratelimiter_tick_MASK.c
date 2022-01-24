#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ isc_uint32_t ;
typedef  int /*<<< orphan*/  isc_task_t ;
typedef  scalar_t__ isc_result_t ;
struct TYPE_8__ {scalar_t__ pertic; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; int /*<<< orphan*/  timer; int /*<<< orphan*/  pending; } ;
typedef  TYPE_1__ isc_ratelimiter_t ;
struct TYPE_9__ {int /*<<< orphan*/ * ev_sender; scalar_t__ ev_arg; } ;
typedef  TYPE_2__ isc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_FALSE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ev_link ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**) ; 
 int /*<<< orphan*/  isc_ratelimiter_idle ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isc_timertype_inactive ; 

__attribute__((used)) static void
FUNC10(isc_task_t *task, isc_event_t *event) {
	isc_result_t result = ISC_R_SUCCESS;
	isc_ratelimiter_t *rl = (isc_ratelimiter_t *)event->ev_arg;
	isc_event_t *p;
	isc_uint32_t pertic;

	FUNC6(task);

	FUNC7(&event);

	pertic = rl->pertic;
        while (pertic != 0) {
		pertic--;
		FUNC3(&rl->lock);
		p = FUNC1(rl->pending);
		if (p != NULL) {
			/*
			 * There is work to do.  Let's do it after unlocking.
			 */
			FUNC2(rl->pending, p, ev_link);
		} else {
			/*
			 * No work left to do.  Stop the timer so that we don't
			 * waste resources by having it fire periodically.
			 */
			result = FUNC9(rl->timer,
						 isc_timertype_inactive,
						 NULL, NULL, ISC_FALSE);
			FUNC4(result == ISC_R_SUCCESS);
			rl->state = isc_ratelimiter_idle;
			pertic = 0;	/* Force the loop to exit. */
		}
		FUNC5(&rl->lock);
		if (p != NULL) {
			isc_task_t *evtask = p->ev_sender;
			FUNC8(evtask, &p);
		}
		FUNC0(p == NULL);
	}
}