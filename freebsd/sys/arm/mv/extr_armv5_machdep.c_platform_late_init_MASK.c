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
 scalar_t__ MV_SOC_UNSUPPORTED ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 

void
FUNC4(void)
{
	/*
	 * Re-initialise decode windows
	 */
	if (FUNC0() == MV_SOC_UNSUPPORTED)
		FUNC1("Unsupported SoC family\n");

	if (FUNC3() != 0)
		FUNC2("WARNING: could not re-initialise decode windows! "
		    "Running with existing settings...\n");
}