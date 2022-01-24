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
typedef  int /*<<< orphan*/  platform_t ;
typedef  int phandle_t ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void
FUNC5(platform_t plate)
{
	phandle_t node;
	/*
	 * Re-initialise decode windows
	 */
	if (FUNC4() != 0)
		FUNC3("WARNING: could not re-initialise decode windows! "
		    "Running with existing settings...\n");
	if ((node = FUNC0("/")) == -1)
		return;

#if !defined(SMP)
	/* For SMP case it should be initialized after APs are booted */
	FUNC1();
#endif
	FUNC2();
}