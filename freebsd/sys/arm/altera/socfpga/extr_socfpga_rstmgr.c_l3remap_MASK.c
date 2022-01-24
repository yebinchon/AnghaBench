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
typedef  int /*<<< orphan*/  uint32_t ;
struct rstmgr_softc {int /*<<< orphan*/  dev; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  paddr ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  L3REGS_REMAP ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,char*,int /*<<< orphan*/ *,int) ; 
 int REMAP_MPUZERO ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 

__attribute__((used)) static int
FUNC5(struct rstmgr_softc *sc, int remap, int enable)
{
	uint32_t paddr;
	bus_addr_t vaddr;
	phandle_t node;
	int reg;

	/*
	 * Control whether bridge is visible to L3 masters or not.
	 * Register is write-only.
	 */

	reg = REMAP_MPUZERO;
	if (enable)
		reg |= (remap);
	else
		reg &= ~(remap);

	node = FUNC0("l3regs");
	if (node == -1) {
		FUNC4(sc->dev, "Can't find l3regs node\n");
		return (1);
	}

	if ((FUNC1(node, "reg", &paddr, sizeof(paddr))) > 0) {
		if (FUNC2(fdtbus_bs_tag, paddr, 0x4, 0, &vaddr) == 0) {
			FUNC3(fdtbus_bs_tag, vaddr,
			    L3REGS_REMAP, reg);
			return (0);
		}
	}

	return (1);
}