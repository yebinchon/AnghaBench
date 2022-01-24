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
typedef  int /*<<< orphan*/  isc_result_t ;
typedef  void* isc_boolean_t ;

/* Variables and functions */
 void* ISC_FALSE ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 void* ISC_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t SHUTDOWN_EVENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hEvents ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  running ; 
 void* shutdown_requested ; 

isc_result_t
FUNC4(void) {
	isc_boolean_t want_kill = ISC_TRUE;

	FUNC0(&lock);
	FUNC1(running);

	if (shutdown_requested)
		want_kill = ISC_FALSE;		/* We're only signaling once */
	else
		shutdown_requested = ISC_TRUE;

	FUNC3(&lock);
	if (want_kill)
		FUNC2(hEvents[SHUTDOWN_EVENT]);

	return (ISC_R_SUCCESS);
}