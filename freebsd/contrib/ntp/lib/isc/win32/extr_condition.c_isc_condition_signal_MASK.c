#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_3__ {int /*<<< orphan*/ * events; } ;
typedef  TYPE_1__ isc_condition_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  ISC_R_UNEXPECTED ; 
 size_t LSIGNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

isc_result_t
FUNC2(isc_condition_t *cond) {

	/*
	 * Unlike pthreads, the caller MUST hold the lock associated with
	 * the condition variable when calling us.
	 */
	FUNC0(cond != NULL);

	if (!FUNC1(cond->events[LSIGNAL])) {
		/* XXX */
		return (ISC_R_UNEXPECTED);
	}

	return (ISC_R_SUCCESS);
}