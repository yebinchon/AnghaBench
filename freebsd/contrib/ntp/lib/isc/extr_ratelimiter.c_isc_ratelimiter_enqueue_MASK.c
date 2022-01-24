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
typedef  scalar_t__ isc_result_t ;
struct TYPE_7__ {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  interval; int /*<<< orphan*/  timer; int /*<<< orphan*/  pending; } ;
typedef  TYPE_1__ isc_ratelimiter_t ;
struct TYPE_8__ {int /*<<< orphan*/ * ev_sender; } ;
typedef  TYPE_2__ isc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ISC_FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ISC_R_SHUTTINGDOWN ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ev_link ; 
 scalar_t__ isc_ratelimiter_idle ; 
 scalar_t__ isc_ratelimiter_ratelimited ; 
 scalar_t__ isc_ratelimiter_shuttingdown ; 
 scalar_t__ isc_ratelimiter_stalled ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isc_timertype_ticker ; 

isc_result_t
FUNC7(isc_ratelimiter_t *rl, isc_task_t *task,
			isc_event_t **eventp)
{
	isc_result_t result = ISC_R_SUCCESS;
	isc_event_t *ev;

	FUNC3(eventp != NULL && *eventp != NULL);
	FUNC3(task != NULL);
	ev = *eventp;
	FUNC3(ev->ev_sender == NULL);

	FUNC2(&rl->lock);
        if (rl->state == isc_ratelimiter_ratelimited ||
	    rl->state == isc_ratelimiter_stalled) {
		isc_event_t *ev = *eventp;
		ev->ev_sender = task;
                FUNC1(rl->pending, ev, ev_link);
		*eventp = NULL;
        } else if (rl->state == isc_ratelimiter_idle) {
		result = FUNC6(rl->timer, isc_timertype_ticker, NULL,
					 &rl->interval, ISC_FALSE);
		if (result == ISC_R_SUCCESS) {
			ev->ev_sender = task;
			rl->state = isc_ratelimiter_ratelimited;
		}
	} else {
		FUNC0(rl->state == isc_ratelimiter_shuttingdown);
		result = ISC_R_SHUTTINGDOWN;
	}
	FUNC4(&rl->lock);
	if (*eventp != NULL && result == ISC_R_SUCCESS)
		FUNC5(task, eventp);
	return (result);
}