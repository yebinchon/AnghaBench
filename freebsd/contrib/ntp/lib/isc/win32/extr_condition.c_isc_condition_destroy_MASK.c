#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_9__ {int /*<<< orphan*/ * handle; } ;
typedef  TYPE_1__ isc_condition_thread_t ;
struct TYPE_10__ {scalar_t__ waiters; int /*<<< orphan*/  threadlist; int /*<<< orphan*/ * events; } ;
typedef  TYPE_2__ isc_condition_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 size_t LBROADCAST ; 
 size_t LSIGNAL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  link ; 

isc_result_t
FUNC6(isc_condition_t *cond) {

	isc_condition_thread_t *next, *threadcond;

	FUNC4(cond != NULL);
	FUNC4(cond->waiters == 0);

	(void)FUNC0(cond->events[LSIGNAL]);

	/*
	 * Delete the threadlist
	 */
	threadcond = FUNC2(cond->threadlist);

	while (threadcond != NULL) {
		next = FUNC3(threadcond, link);
		FUNC1(cond->threadlist, threadcond, link);
		(void) FUNC0(threadcond->handle[LBROADCAST]);
		FUNC5(threadcond);
		threadcond = next;
	}

	return (ISC_R_SUCCESS);
}