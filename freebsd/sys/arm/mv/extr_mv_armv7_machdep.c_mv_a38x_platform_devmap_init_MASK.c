#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  platform_t ;
typedef  int phandle_t ;
struct TYPE_5__ {int /*<<< orphan*/  pd_size; int /*<<< orphan*/  pd_pa; int /*<<< orphan*/  pd_va; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int FDT_DEVMAP_MAX ; 
 int /*<<< orphan*/  MV_PCI_VA_IO_BASE ; 
 int /*<<< orphan*/  MV_PCI_VA_MEM_BASE ; 
 int FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* fdt_devmap ; 
 int /*<<< orphan*/  fdt_immr_pa ; 
 int /*<<< orphan*/  fdt_immr_size ; 
 int /*<<< orphan*/  fdt_immr_va ; 
 scalar_t__ FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (int,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7(platform_t plat)
{
	phandle_t root, child;
	int i;

	i = 0;
	FUNC3(&fdt_devmap[0]);

	if ((root = FUNC1("/")) == -1)
		return (ENXIO);

	/*
	 * IMMR range.
	 */
	fdt_devmap[i].pd_va = fdt_immr_va;
	fdt_devmap[i].pd_pa = fdt_immr_pa;
	fdt_devmap[i].pd_size = fdt_immr_size;
	i++;

	/*
	 * SRAM range.
	 */
	if (i < FDT_DEVMAP_MAX)
		if (FUNC6(&fdt_devmap[i]) == 0)
			i++;

	/*
	 * PCI range(s).
	 * PCI range(s) and localbus.
	 */
	for (child = FUNC0(root); child != 0; child = FUNC2(child)) {
		if (FUNC4(child, "pci") ||
		    FUNC4(child, "pciep")) {
			/*
			 * Check space: each PCI node will consume 2 devmap
			 * entries.
			 */
			if (i + 1 >= FDT_DEVMAP_MAX)
				return (ENOMEM);

			if (FUNC5(child, &fdt_devmap[i], MV_PCI_VA_IO_BASE,
				    MV_PCI_VA_MEM_BASE) != 0)
				return (ENXIO);
			i += 2;
		}
	}

	return (0);
}