#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  bank_count ;
struct TYPE_6__ {int /*<<< orphan*/  pd_size; int /*<<< orphan*/  pd_pa; int /*<<< orphan*/  pd_va; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int FDT_DEVMAP_MAX ; 
 int /*<<< orphan*/  MV_PCI_VA_IO_BASE ; 
 int /*<<< orphan*/  MV_PCI_VA_MEM_BASE ; 
 int FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,char*,int*,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* fdt_devmap ; 
 int /*<<< orphan*/  fdt_immr_pa ; 
 int /*<<< orphan*/  fdt_immr_size ; 
 int /*<<< orphan*/  fdt_immr_va ; 
 scalar_t__ FUNC5 (int,TYPE_1__*,int,int*) ; 
 scalar_t__ FUNC6 (int,char*) ; 
 scalar_t__ FUNC7 (int,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,char*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 

int
FUNC10(void)
{
	phandle_t root, child;
	pcell_t bank_count;
	int i, num_mapped;

	i = 0;
	FUNC4(&fdt_devmap[0]);

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
		if (FUNC9(&fdt_devmap[i]) == 0)
			i++;

	/*
	 * PCI range(s).
	 * PCI range(s) and localbus.
	 */
	for (child = FUNC0(root); child != 0; child = FUNC3(child)) {
		if (FUNC6(child, "pci") ||
		    FUNC6(child, "pciep")) {
			/*
			 * Check space: each PCI node will consume 2 devmap
			 * entries.
			 */
			if (i + 1 >= FDT_DEVMAP_MAX)
				return (ENOMEM);

			/*
			 * XXX this should account for PCI and multiple ranges
			 * of a given kind.
			 */
			if (FUNC7(child, &fdt_devmap[i], MV_PCI_VA_IO_BASE,
				    MV_PCI_VA_MEM_BASE) != 0)
				return (ENXIO);
			i += 2;
		}

		if (FUNC8(child, "mrvl,lbc")) {
			/* Check available space */
			if (FUNC2(child, "bank-count", &bank_count,
			    sizeof(bank_count)) <= 0)
				/* If no property, use default value */
				bank_count = 1;

			if ((i + bank_count) >= FDT_DEVMAP_MAX)
				return (ENOMEM);

			/* Add all localbus ranges to device map */
			num_mapped = 0;

			if (FUNC5(child, &fdt_devmap[i],
			    (int)bank_count, &num_mapped) != 0)
				return (ENXIO);

			i += num_mapped;
		}
	}

	return (0);
}