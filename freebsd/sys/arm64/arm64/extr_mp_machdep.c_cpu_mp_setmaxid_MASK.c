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
#define  ARM64_BUS_ACPI 129 
#define  ARM64_BUS_FDT 128 
 int /*<<< orphan*/  MAXCPU ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int*) ; 
 int arm64_bus_method ; 
 int /*<<< orphan*/  bootverbose ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  cpu_find_cpu0_fdt ; 
 int mp_maxid ; 
 int mp_ncpus ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

void
FUNC5(void)
{
	int cores;

	mp_ncpus = 1;
	mp_maxid = 0;

	switch(arm64_bus_method) {
#ifdef DEV_ACPI
	case ARM64_BUS_ACPI:
		cores = cpu_count_acpi();
		if (cores > 0) {
			cores = MIN(cores, MAXCPU);
			if (bootverbose)
				printf("Found %d CPUs in the ACPI tables\n",
				    cores);
			mp_ncpus = cores;
			mp_maxid = cores - 1;
		}
		break;
#endif
#ifdef FDT
	case ARM64_BUS_FDT:
		cores = ofw_cpu_early_foreach(cpu_find_cpu0_fdt, false);
		if (cores > 0) {
			cores = MIN(cores, MAXCPU);
			if (bootverbose)
				printf("Found %d CPUs in the device tree\n",
				    cores);
			mp_ncpus = cores;
			mp_maxid = cores - 1;
		}
		break;
#endif
	default:
		if (bootverbose)
			FUNC4("No CPU data, limiting to 1 core\n");
		break;
	}

	if (FUNC1("hw.ncpu", &cores)) {
		if (cores > 0 && cores < mp_ncpus) {
			mp_ncpus = cores;
			mp_maxid = cores - 1;
		}
	}
}