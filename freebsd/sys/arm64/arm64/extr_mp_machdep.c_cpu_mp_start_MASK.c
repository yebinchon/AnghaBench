#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  phandle_t ;
struct TYPE_2__ {int /*<<< orphan*/  quirks; int /*<<< orphan*/ * compat; } ;

/* Variables and functions */
#define  ARM64_BUS_ACPI 129 
#define  ARM64_BUS_FDT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  MP_QUIRK_CPULIST ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all_cpus ; 
 int /*<<< orphan*/  ap_boot_mtx ; 
 int arm64_bus_method ; 
 int /*<<< orphan*/  cpu0 ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  cpu_init_fdt ; 
 TYPE_1__* fdt_quirks ; 
 int /*<<< orphan*/  mp_quirks ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

void
FUNC7(void)
{
#ifdef FDT
	phandle_t node;
	int i;
#endif

	FUNC4(&ap_boot_mtx, "ap boot", NULL, MTX_SPIN);

	FUNC0(0, &all_cpus);

	switch(arm64_bus_method) {
#ifdef DEV_ACPI
	case ARM64_BUS_ACPI:
		mp_quirks = MP_QUIRK_CPULIST;
		KASSERT(cpu0 >= 0, ("Current CPU was not found"));
		cpu_init_acpi();
		break;
#endif
#ifdef FDT
	case ARM64_BUS_FDT:
		node = OF_peer(0);
		for (i = 0; fdt_quirks[i].compat != NULL; i++) {
			if (ofw_bus_node_is_compatible(node,
			    fdt_quirks[i].compat) != 0) {
				mp_quirks = fdt_quirks[i].quirks;
			}
		}
		KASSERT(cpu0 >= 0, ("Current CPU was not found"));
		ofw_cpu_early_foreach(cpu_init_fdt, true);
		break;
#endif
	default:
		break;
	}
}