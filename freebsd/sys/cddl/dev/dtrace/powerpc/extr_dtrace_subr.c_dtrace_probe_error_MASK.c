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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dtrace_state_t ;
typedef  scalar_t__ dtrace_epid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ; 
 int /*<<< orphan*/  dtrace_probeid_error ; 

void
FUNC1(dtrace_state_t *state, dtrace_epid_t epid, int which,
    int fault, int fltoffs, uintptr_t illval)
{

	FUNC0(dtrace_probeid_error, (uint64_t)(uintptr_t)state,
	    (uintptr_t)epid,
	    (uintptr_t)which, (uintptr_t)fault, (uintptr_t)fltoffs);
}