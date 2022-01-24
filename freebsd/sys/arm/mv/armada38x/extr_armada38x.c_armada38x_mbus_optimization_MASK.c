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
typedef  int /*<<< orphan*/  bus_space_handle_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_BARRIER_WRITE ; 
 scalar_t__ MV_MBUS_CTRL_BASE ; 
 int /*<<< orphan*/  MV_MBUS_CTRL_REGS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 

int
FUNC4(void)
{
	bus_space_handle_t vaddr_iowind;
	int rv;

	rv = FUNC1(fdtbus_bs_tag, (bus_addr_t)MV_MBUS_CTRL_BASE,
	    MV_MBUS_CTRL_REGS_LEN, 0, &vaddr_iowind);
	if (rv != 0)
		return (rv);

	/*
	 * MBUS Units Priority Control Register - Prioritize XOR,
	 * PCIe and GbEs (ID=4,6,3,7,8) DRAM access
	 * GbE is High and others are Medium.
	 */
	FUNC3(fdtbus_bs_tag, vaddr_iowind, 0, 0x19180);

	/*
	 * Fabric Units Priority Control Register -
	 * Prioritize CPUs requests.
	 */
	FUNC3(fdtbus_bs_tag, vaddr_iowind, 0x4, 0x3000A);

	/*
	 * MBUS Units Prefetch Control Register -
	 * Pre-fetch enable for all IO masters.
	 */
	FUNC3(fdtbus_bs_tag, vaddr_iowind, 0x8, 0xFFFF);

	/*
	 * Fabric Units Prefetch Control Register -
	 * Enable the CPUs Instruction and Data prefetch.
	 */
	FUNC3(fdtbus_bs_tag, vaddr_iowind, 0xc, 0x303);

	FUNC0(fdtbus_bs_tag, vaddr_iowind, 0, MV_MBUS_CTRL_REGS_LEN,
	    BUS_SPACE_BARRIER_WRITE);

	FUNC2(fdtbus_bs_tag, vaddr_iowind, MV_MBUS_CTRL_REGS_LEN);

	return (rv);
}