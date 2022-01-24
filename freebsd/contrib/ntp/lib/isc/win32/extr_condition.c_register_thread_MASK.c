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
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_8__ {unsigned long th; int /*<<< orphan*/ ** handle; } ;
typedef  TYPE_1__ isc_condition_thread_t ;
struct TYPE_9__ {int /*<<< orphan*/  threadlist; int /*<<< orphan*/ ** events; } ;
typedef  TYPE_2__ isc_condition_t ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  ISC_R_UNEXPECTED ; 
 size_t LBROADCAST ; 
 size_t LSIGNAL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  link ; 
 TYPE_1__* FUNC4 (int) ; 

__attribute__((used)) static isc_result_t
FUNC5(unsigned long thrd, isc_condition_t *gblcond,
		isc_condition_thread_t **localcond)
{
	HANDLE hc;
	isc_condition_thread_t *newthread;

	FUNC2(localcond != NULL && *localcond == NULL);

	newthread = FUNC4(sizeof(isc_condition_thread_t));
	if (newthread == NULL)
		return (ISC_R_NOMEMORY);

	/*
	 * Create the thread-specific handle
	 */
	hc = FUNC0(NULL, FALSE, FALSE, NULL);
	if (hc == NULL) {
		FUNC3(newthread);
		return (ISC_R_UNEXPECTED);
	}

	/*
	 * Add the thread ID and handles to list of threads for broadcast
	 */
	newthread->handle[LSIGNAL] = gblcond->events[LSIGNAL];
	newthread->handle[LBROADCAST] = hc;
	newthread->th = thrd;

	/*
	 * The thread is holding the manager lock so this is safe
	 */
	FUNC1(gblcond->threadlist, newthread, link);
	*localcond = newthread;
	return (ISC_R_SUCCESS);
}