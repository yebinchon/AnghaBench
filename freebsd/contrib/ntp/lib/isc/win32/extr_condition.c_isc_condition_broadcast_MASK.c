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
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_7__ {int /*<<< orphan*/ * handle; } ;
typedef  TYPE_1__ isc_condition_thread_t ;
struct TYPE_8__ {int /*<<< orphan*/  threadlist; } ;
typedef  TYPE_2__ isc_condition_t ;
typedef  scalar_t__ isc_boolean_t ;

/* Variables and functions */
 scalar_t__ ISC_FALSE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  ISC_R_UNEXPECTED ; 
 scalar_t__ ISC_TRUE ; 
 size_t LBROADCAST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 

isc_result_t
FUNC4(isc_condition_t *cond) {

	isc_condition_thread_t *threadcond;
	isc_boolean_t failed = ISC_FALSE;

	/*
	 * Unlike pthreads, the caller MUST hold the lock associated with
	 * the condition variable when calling us.
	 */
	FUNC2(cond != NULL);

	/*
	 * Notify every thread registered for this
	 */
	for (threadcond = FUNC0(cond->threadlist);
	     threadcond != NULL;
	     threadcond = FUNC1(threadcond, link)) {

		if (!FUNC3(threadcond->handle[LBROADCAST]))
			failed = ISC_TRUE;
	}

	if (failed)
		return (ISC_R_UNEXPECTED);

	return (ISC_R_SUCCESS);
}