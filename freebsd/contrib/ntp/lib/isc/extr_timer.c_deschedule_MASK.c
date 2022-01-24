#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ isc_boolean_t ;
struct TYPE_4__ {scalar_t__ nscheduled; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  heap; } ;
typedef  TYPE_1__ isc__timermgr_t ;
struct TYPE_5__ {int index; TYPE_1__* manager; } ;
typedef  TYPE_2__ isc__timer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ISC_FALSE ; 
 int /*<<< orphan*/  ISC_MSGSET_TIMER ; 
 int /*<<< orphan*/  ISC_MSG_SIGNALDESCHED ; 
 scalar_t__ ISC_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  isc_msgcat ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static inline void
FUNC5(isc__timer_t *timer) {
#ifdef USE_TIMER_THREAD
	isc_boolean_t need_wakeup = ISC_FALSE;
#endif
	isc__timermgr_t *manager;

	/*
	 * The caller must ensure locking.
	 */

	manager = timer->manager;
	if (timer->index > 0) {
#ifdef USE_TIMER_THREAD
		if (timer->index == 1)
			need_wakeup = ISC_TRUE;
#endif
		FUNC3(manager->heap, timer->index);
		timer->index = 0;
		FUNC0(manager->nscheduled > 0);
		manager->nscheduled--;
#ifdef USE_TIMER_THREAD
		if (need_wakeup) {
			XTRACE(isc_msgcat_get(isc_msgcat, ISC_MSGSET_TIMER,
					      ISC_MSG_SIGNALDESCHED,
					      "signal (deschedule)"));
			SIGNAL(&manager->wakeup);
		}
#endif /* USE_TIMER_THREAD */
	}
}