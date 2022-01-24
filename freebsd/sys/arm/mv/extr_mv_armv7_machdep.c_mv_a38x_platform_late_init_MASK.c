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

/* Variables and functions */
 scalar_t__ MV_SOC_UNSUPPORTED ; 
 int /*<<< orphan*/  VM_MEMATTR_DEVICE ; 
 int /*<<< orphan*/  VM_MEMATTR_SO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 () ; 

__attribute__((used)) static void
FUNC11(platform_t plate)
{

	/*
	 * Re-initialise decode windows
	 */
	if (FUNC6() == MV_SOC_UNSUPPORTED)
		FUNC7("Unsupported SoC family\n");

	if (FUNC10() != 0)
		FUNC9("WARNING: could not re-initialise decode windows! "
		    "Running with existing settings...\n");

	/* Configure timers' base frequency */
	FUNC0(FUNC5() / 2);

	/*
	 * Workaround for Marvell Armada38X family HW issue
	 * between Cortex-A9 CPUs and on-chip devices that may
	 * cause hang on heavy load.
	 * To avoid that, map all registers including PCIe IO
	 * as strongly ordered instead of device memory.
	 */
	FUNC8(VM_MEMATTR_DEVICE, VM_MEMATTR_SO);

	/* Set IO Sync Barrier bit for all Mbus devices */
	if (FUNC4() != 0)
		FUNC9("WARNING: could not map CPU Subsystem registers\n");
	if (FUNC1() != 0)
		FUNC9("WARNING: could not enable mbus optimization\n");
	if (FUNC3() != 0)
		FUNC9("WARNING: could not enable SCU\n");
#ifdef SMP
	/* Open window to bootROM memory - needed for SMP */
	if (armada38x_open_bootrom_win() != 0)
		printf("WARNING: could not open window to bootROM\n");
#endif
}