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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * dtrace_pid_probe_ptr ; 
 int /*<<< orphan*/ * dtrace_return_probe_ptr ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  fasttrap_count_mtx ; 
 scalar_t__ fasttrap_pid_count ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void)
{
	FUNC2(&fasttrap_count_mtx);
	FUNC0(fasttrap_pid_count > 0);
	fasttrap_pid_count--;
	if (fasttrap_pid_count == 0) {
		/*
		 * Synchronize with the breakpoint handler, which is careful to
		 * enable interrupts only after loading the hook pointer.
		 */
		FUNC1();
		dtrace_pid_probe_ptr = NULL;
		dtrace_return_probe_ptr = NULL;
	}
	FUNC3(&fasttrap_count_mtx);
}