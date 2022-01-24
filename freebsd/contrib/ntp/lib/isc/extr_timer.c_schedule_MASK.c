#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* isc_time_t ;
typedef  scalar_t__ isc_result_t ;
typedef  int /*<<< orphan*/  isc_interval_t ;
typedef  scalar_t__ isc_boolean_t ;
struct TYPE_6__ {scalar_t__ nscheduled; void* due; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  heap; } ;
typedef  TYPE_1__ isc__timermgr_t ;
struct TYPE_7__ {scalar_t__ type; void* expires; void* idle; int index; void* due; int /*<<< orphan*/  interval; TYPE_1__* manager; } ;
typedef  TYPE_2__ isc__timer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ISC_FALSE ; 
 int /*<<< orphan*/  ISC_LOGCATEGORY_GENERAL ; 
 int /*<<< orphan*/  ISC_LOGMODULE_TIMER ; 
 int /*<<< orphan*/  ISC_LOG_WARNING ; 
 int /*<<< orphan*/  ISC_MSGSET_TIMER ; 
 int /*<<< orphan*/  ISC_MSG_SCHEDULE ; 
 int /*<<< orphan*/  ISC_MSG_SIGNALSCHED ; 
 scalar_t__ ISC_R_NOMEMORY ; 
 scalar_t__ ISC_R_SUCCESS ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isc_lctx ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  isc_msgcat ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC13 (void**,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC14 (void**,void**) ; 
 scalar_t__ FUNC15 (void**) ; 
 scalar_t__ FUNC16 (void**) ; 
 scalar_t__ isc_timertype_inactive ; 
 scalar_t__ isc_timertype_limited ; 
 scalar_t__ isc_timertype_once ; 

__attribute__((used)) static inline isc_result_t
FUNC17(isc__timer_t *timer, isc_time_t *now, isc_boolean_t signal_ok) {
	isc_result_t result;
	isc__timermgr_t *manager;
	isc_time_t due;
	int cmp;
#ifdef USE_TIMER_THREAD
	isc_boolean_t timedwait;
#endif

	/*!
	 * Note: the caller must ensure locking.
	 */

	FUNC2(timer->type != isc_timertype_inactive);

#ifndef USE_TIMER_THREAD
	FUNC4(signal_ok);
#endif /* USE_TIMER_THREAD */

	manager = timer->manager;

#ifdef USE_TIMER_THREAD
	/*!
	 * If the manager was timed wait, we may need to signal the
	 * manager to force a wakeup.
	 */
	timedwait = ISC_TF(manager->nscheduled > 0 &&
			   isc_time_seconds(&manager->due) != 0);
#endif

	/*
	 * Compute the new due time.
	 */
	if (timer->type != isc_timertype_once) {
		result = FUNC13(now, &timer->interval, &due);
		if (result != ISC_R_SUCCESS)
			return (result);
		if (timer->type == isc_timertype_limited &&
		    FUNC14(&timer->expires, &due) < 0)
			due = timer->expires;
	} else {
		if (FUNC15(&timer->idle))
			due = timer->expires;
		else if (FUNC15(&timer->expires))
			due = timer->idle;
		else if (FUNC14(&timer->idle, &timer->expires) < 0)
			due = timer->idle;
		else
			due = timer->expires;
	}

	/*
	 * Schedule the timer.
	 */

	if (timer->index > 0) {
		/*
		 * Already scheduled.
		 */
		cmp = FUNC14(&due, &timer->due);
		timer->due = due;
		switch (cmp) {
		case -1:
			FUNC8(manager->heap, timer->index);
			break;
		case 1:
			FUNC7(manager->heap, timer->index);
			break;
		case 0:
			/* Nothing to do. */
			break;
		}
	} else {
		timer->due = due;
		result = FUNC9(manager->heap, timer);
		if (result != ISC_R_SUCCESS) {
			FUNC0(result == ISC_R_NOMEMORY);
			return (ISC_R_NOMEMORY);
		}
		manager->nscheduled++;
	}

	FUNC6(FUNC12(isc_msgcat, ISC_MSGSET_TIMER,
				   ISC_MSG_SCHEDULE, "schedule"), timer, due);

	/*
	 * If this timer is at the head of the queue, we need to ensure
	 * that we won't miss it if it has a more recent due time than
	 * the current "next" timer.  We do this either by waking up the
	 * run thread, or explicitly setting the value in the manager.
	 */
#ifdef USE_TIMER_THREAD

	/*
	 * This is a temporary (probably) hack to fix a bug on tru64 5.1
	 * and 5.1a.  Sometimes, pthread_cond_timedwait() doesn't actually
	 * return when the time expires, so here, we check to see if
	 * we're 15 seconds or more behind, and if we are, we signal
	 * the dispatcher.  This isn't such a bad idea as a general purpose
	 * watchdog, so perhaps we should just leave it in here.
	 */
	if (signal_ok && timedwait) {
		isc_interval_t fifteen;
		isc_time_t then;

		isc_interval_set(&fifteen, 15, 0);
		result = isc_time_add(&manager->due, &fifteen, &then);

		if (result == ISC_R_SUCCESS &&
		    isc_time_compare(&then, now) < 0) {
			SIGNAL(&manager->wakeup);
			signal_ok = ISC_FALSE;
			isc_log_write(isc_lctx, ISC_LOGCATEGORY_GENERAL,
				      ISC_LOGMODULE_TIMER, ISC_LOG_WARNING,
				      "*** POKED TIMER ***");
		}
	}

	if (timer->index == 1 && signal_ok) {
		XTRACE(isc_msgcat_get(isc_msgcat, ISC_MSGSET_TIMER,
				      ISC_MSG_SIGNALSCHED,
				      "signal (schedule)"));
		SIGNAL(&manager->wakeup);
	}
#else /* USE_TIMER_THREAD */
	if (timer->index == 1 &&
	    FUNC14(&timer->due, &manager->due) < 0)
		manager->due = timer->due;
#endif /* USE_TIMER_THREAD */

	return (ISC_R_SUCCESS);
}