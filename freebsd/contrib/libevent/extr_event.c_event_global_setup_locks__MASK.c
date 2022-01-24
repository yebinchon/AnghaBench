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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  event_debug_map_lock_ ; 
 scalar_t__ FUNC1 (int const) ; 
 scalar_t__ FUNC2 (int const) ; 
 scalar_t__ FUNC3 (int const) ; 

int
FUNC4(const int enable_locks)
{
#ifndef EVENT__DISABLE_DEBUG_MODE
	FUNC0(event_debug_map_lock_, 0);
#endif
	if (FUNC1(enable_locks) < 0)
		return -1;
	if (FUNC2(enable_locks) < 0)
		return -1;
	if (FUNC3(enable_locks) < 0)
		return -1;
	return 0;
}