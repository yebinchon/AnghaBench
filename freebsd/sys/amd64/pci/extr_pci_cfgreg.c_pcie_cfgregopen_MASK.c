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
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  CFGMECH_PCIE ; 
 int PCI_SLOTMAX ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  cfgmech ; 
 int /*<<< orphan*/  mcfg_enable ; 
 scalar_t__ FUNC0 () ; 
 int pcie_badslots ; 
 scalar_t__ pcie_base ; 
 scalar_t__ pcie_maxbus ; 
 scalar_t__ pcie_minbus ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

int
FUNC5(uint64_t base, uint8_t minbus, uint8_t maxbus)
{
	uint32_t val1, val2;
	int slot;

	if (!mcfg_enable)
		return (0);

	if (minbus != 0)
		return (0);

	if (bootverbose)
		FUNC4("PCIe: Memory Mapped configuration base @ 0x%lx\n",
		    base);

	/* XXX: We should make sure this really fits into the direct map. */
	pcie_base = (vm_offset_t)FUNC3(base, (maxbus + 1) << 20);
	pcie_minbus = minbus;
	pcie_maxbus = maxbus;
	cfgmech = CFGMECH_PCIE;

	/*
	 * On some AMD systems, some of the devices on bus 0 are
	 * inaccessible using memory-mapped PCI config access.  Walk
	 * bus 0 looking for such devices.  For these devices, we will
	 * fall back to using type 1 config access instead.
	 */
	if (FUNC0() != 0) {
		for (slot = 0; slot <= PCI_SLOTMAX; slot++) {
			val1 = FUNC2(0, slot, 0, 0, 4);
			if (val1 == 0xffffffff)
				continue;

			val2 = FUNC1(0, slot, 0, 0, 4);
			if (val2 != val1)
				pcie_badslots |= (1 << slot);
		}
	}

	return (1);
}