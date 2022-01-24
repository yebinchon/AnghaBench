#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_timermgr_t ;
typedef  int /*<<< orphan*/  isc_task_t ;
typedef  scalar_t__ isc_result_t ;
struct TYPE_8__ {int refs; int pertic; int /*<<< orphan*/  lock; int /*<<< orphan*/  shutdownevent; int /*<<< orphan*/ * timer; int /*<<< orphan*/ * task; int /*<<< orphan*/  pending; int /*<<< orphan*/  state; int /*<<< orphan*/  interval; int /*<<< orphan*/ * mctx; } ;
typedef  TYPE_1__ isc_ratelimiter_t ;
typedef  int /*<<< orphan*/  isc_mem_t ;
typedef  int /*<<< orphan*/  isc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_RATELIMITEREVENT_SHUTDOWN ; 
 scalar_t__ ISC_R_NOMEMORY ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  isc_ratelimiter_idle ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  isc_timertype_inactive ; 
 int /*<<< orphan*/  ratelimiter_shutdowncomplete ; 
 int /*<<< orphan*/  ratelimiter_tick ; 

isc_result_t
FUNC9(isc_mem_t *mctx, isc_timermgr_t *timermgr,
		       isc_task_t *task, isc_ratelimiter_t **ratelimiterp)
{
	isc_result_t result;
	isc_ratelimiter_t *rl;
	FUNC1(ratelimiterp != NULL && *ratelimiterp == NULL);

	rl = FUNC5(mctx, sizeof(*rl));
	if (rl == NULL)
		return ISC_R_NOMEMORY;
	rl->mctx = mctx;
	rl->refs = 1;
	rl->task = task;
	FUNC4(&rl->interval, 0, 0);
	rl->timer = NULL;
	rl->pertic = 1;
	rl->state = isc_ratelimiter_idle;
	FUNC3(rl->pending);

	result = FUNC7(&rl->lock);
	if (result != ISC_R_SUCCESS)
		goto free_mem;
	result = FUNC8(timermgr, isc_timertype_inactive,
				  NULL, NULL, rl->task, ratelimiter_tick,
				  rl, &rl->timer);
	if (result != ISC_R_SUCCESS)
		goto free_mutex;

	/*
	 * Increment the reference count to indicate that we may
	 * (soon) have events outstanding.
	 */
	rl->refs++;

	FUNC2(&rl->shutdownevent,
		       sizeof(isc_event_t),
		       0, NULL, ISC_RATELIMITEREVENT_SHUTDOWN,
		       ratelimiter_shutdowncomplete, rl, rl, NULL, NULL);

	*ratelimiterp = rl;
	return (ISC_R_SUCCESS);

free_mutex:
	FUNC0(&rl->lock);
free_mem:
	FUNC6(mctx, rl, sizeof(*rl));
	return (result);
}