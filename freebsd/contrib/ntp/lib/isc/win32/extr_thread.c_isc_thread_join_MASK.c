#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ isc_threadresult_t ;
typedef  int /*<<< orphan*/  isc_thread_t ;
typedef  int /*<<< orphan*/  isc_result_t ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  ISC_R_UNEXPECTED ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

isc_result_t
FUNC3(isc_thread_t thread, isc_threadresult_t *rp) {
	DWORD result;
	DWORD threadrc;

	result = FUNC2(thread, INFINITE);
	if (result != WAIT_OBJECT_0) {
		/* XXX */
		return (ISC_R_UNEXPECTED);
	}
	if (rp != NULL) {
		if(!FUNC1(thread, &threadrc)) {
			/* XXX */
			return (ISC_R_UNEXPECTED);
		}
		*rp = threadrc;
	}
	(void)FUNC0(thread);

	return (ISC_R_SUCCESS);
}