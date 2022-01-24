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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int phandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MV_PCIE_BASE ; 
 int /*<<< orphan*/  MV_PCIE_BASE_ARMADA38X ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 scalar_t__ FUNC2 (int,char*) ; 

void
FUNC3(uint32_t *dev, uint32_t *rev)
{
	uint64_t mv_pcie_base = MV_PCIE_BASE;
	phandle_t node;

	/*
	 * Notice: system identifiers are available in the registers range of
	 * PCIE controller, so using this function is only allowed (and
	 * possible) after the internal registers range has been mapped in via
	 * devmap_bootstrap().
	 */
	*dev = 0;
	*rev = 0;
	if ((node = FUNC0("/")) == -1)
		return;
	if (FUNC2(node, "marvell,armada380"))
		mv_pcie_base = MV_PCIE_BASE_ARMADA38X;

	*dev = FUNC1(fdtbus_bs_tag, mv_pcie_base, 0) >> 16;
	*rev = FUNC1(fdtbus_bs_tag, mv_pcie_base, 8) & 0xff;
}