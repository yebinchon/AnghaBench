#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_10__ {unsigned long th; } ;
typedef  TYPE_1__ isc_condition_thread_t ;
struct TYPE_11__ {int /*<<< orphan*/  threadlist; } ;
typedef  TYPE_2__ isc_condition_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,TYPE_2__*,TYPE_1__**) ; 

__attribute__((used)) static isc_result_t
FUNC4(unsigned long thrd, isc_condition_t *cond,
		      isc_condition_thread_t **threadcondp)
{
	isc_condition_thread_t *threadcond;

	FUNC2(threadcondp != NULL && *threadcondp == NULL);

	/*
	 * Look for the thread ID.
	 */
	for (threadcond = FUNC0(cond->threadlist);
	     threadcond != NULL;
	     threadcond = FUNC1(threadcond, link)) {

		if (threadcond->th == thrd) {
			*threadcondp = threadcond;
			return (ISC_R_SUCCESS);
		}
	}

	/*
	 * Not found, so add it.
	 */
	return (FUNC3(thrd, cond, threadcondp));
}