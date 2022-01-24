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
typedef  scalar_t__ isc_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ISC_R_SUCCESS ; 
 size_t RELOAD_EVENT ; 
 size_t SHUTDOWN_EVENT ; 
 int /*<<< orphan*/ * hEvents ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  main_thread ; 
 int /*<<< orphan*/  on_run ; 

isc_result_t
FUNC4(void) {
	isc_result_t result;

	/*
	 * Start an ISC library application.
	 */

	main_thread = FUNC1();

	result = FUNC3(&lock);
	if (result != ISC_R_SUCCESS)
		return (result);

	/* Create the reload event in a non-signaled state */
	hEvents[RELOAD_EVENT] = FUNC0(NULL, FALSE, FALSE, NULL);

	/* Create the shutdown event in a non-signaled state */
	hEvents[SHUTDOWN_EVENT] = FUNC0(NULL, FALSE, FALSE, NULL);

	FUNC2(on_run);
	return (ISC_R_SUCCESS);
}