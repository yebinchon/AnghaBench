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
 scalar_t__ FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 

int
FUNC2(const char *name)
{

	if (FUNC1(name, "dtrace_", 7) == 0 &&
	    FUNC1(name, "dtrace_safe_", 12) != 0) {
		/*
		 * Anything beginning with "dtrace_" may be called
		 * from probe context unless it explicitly indicates
		 * that it won't be called from probe context by
		 * using the prefix "dtrace_safe_".
		 */
		return (1);
	}

	/*
	 * Lock owner methods may be called from probe context.
	 */
	if (FUNC0(name, "owner_mtx") == 0 ||
	    FUNC0(name, "owner_rm") == 0 ||
	    FUNC0(name, "owner_rw") == 0 ||
	    FUNC0(name, "owner_sx") == 0)
		return (1);

	/*
	 * When DTrace is built into the kernel we need to exclude
	 * the FBT functions from instrumentation.
	 */
#ifndef _KLD_MODULE
	if (FUNC1(name, "fbt_", 4) == 0)
		return (1);
#endif

	return (0);
}