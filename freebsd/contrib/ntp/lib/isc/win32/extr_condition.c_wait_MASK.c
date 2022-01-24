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
typedef  scalar_t__ isc_result_t ;
typedef  int /*<<< orphan*/  isc_mutex_t ;
struct TYPE_6__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ isc_condition_thread_t ;
struct TYPE_7__ {int /*<<< orphan*/  waiters; } ;
typedef  TYPE_2__ isc_condition_t ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ ISC_R_SUCCESS ; 
 scalar_t__ ISC_R_TIMEDOUT ; 
 scalar_t__ ISC_R_UNEXPECTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ WAIT_FAILED ; 
 scalar_t__ WAIT_TIMEOUT ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static isc_result_t
FUNC5(isc_condition_t *cond, isc_mutex_t *mutex, DWORD milliseconds) {
	DWORD result;
	isc_result_t tresult;
	isc_condition_thread_t *threadcond = NULL;

	/*
	 * Get the thread events needed for the wait
	 */
	tresult = FUNC3(FUNC4(), cond, &threadcond);
	if (tresult !=  ISC_R_SUCCESS)
		return (tresult);

	cond->waiters++;
	FUNC1(mutex);
	result = FUNC2(2, threadcond->handle, FALSE,
					milliseconds);
	FUNC0(mutex);
	cond->waiters--;
	if (result == WAIT_FAILED) {
		/* XXX */
		return (ISC_R_UNEXPECTED);
	}
	if (result == WAIT_TIMEOUT)
		return (ISC_R_TIMEDOUT);

	return (ISC_R_SUCCESS);
}