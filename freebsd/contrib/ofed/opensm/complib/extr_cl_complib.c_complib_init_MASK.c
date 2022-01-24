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
typedef  scalar_t__ cl_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ CL_SUCCESS ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  cl_atomic_spinlock ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(void)
{
	cl_status_t status = CL_SUCCESS;

	status = FUNC3(&cl_atomic_spinlock);
	if (status != CL_SUCCESS)
		goto _error;

	status = FUNC1();
	if (status != CL_SUCCESS)
		goto _error;
	return;

_error:
	FUNC2("__init: failed to create complib (%s)\n",
		   FUNC0(status));
	FUNC4(1);
}