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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int MPUMODRST_CPU1 ; 
 int /*<<< orphan*/  RAM_PHYSBASE ; 
 int /*<<< orphan*/  RAM_SIZE ; 
 int /*<<< orphan*/  RSTMGR_A10_MPUMODRST ; 
 int /*<<< orphan*/  RSTMGR_MPUMODRST ; 
 int /*<<< orphan*/  RSTMGR_PHYSBASE ; 
 int /*<<< orphan*/  RSTMGR_SIZE ; 
 int SCU_CONTROL_ENABLE ; 
 int /*<<< orphan*/  SCU_CONTROL_REG ; 
 int /*<<< orphan*/  SCU_DIAG_CONTROL ; 
 int SCU_DIAG_DISABLE_MIGBIT ; 
 int /*<<< orphan*/  SCU_INV_TAGS_REG ; 
 int /*<<< orphan*/  SCU_PHYSBASE ; 
 int /*<<< orphan*/  SCU_PHYSBASE_A10 ; 
 int /*<<< orphan*/  SCU_SIZE ; 
#define  SOCFPGA_ARRIA10 129 
#define  SOCFPGA_CYCLONE5 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 scalar_t__ mpentry ; 
 char* mpentry_addr ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  socfpga_trampoline ; 

__attribute__((used)) static void
FUNC10(uint32_t platid)
{
	bus_space_handle_t scu, rst, ram;
	int reg;

	switch (platid) {
#if defined(SOC_ALTERA_ARRIA10)
	case SOCFPGA_ARRIA10:
		if (bus_space_map(fdtbus_bs_tag, SCU_PHYSBASE_A10,
		    SCU_SIZE, 0, &scu) != 0)
			panic("Couldn't map the SCU\n");
		break;
#endif
#if defined(SOC_ALTERA_CYCLONE5)
	case SOCFPGA_CYCLONE5:
		if (bus_space_map(fdtbus_bs_tag, SCU_PHYSBASE,
		    SCU_SIZE, 0, &scu) != 0)
			panic("Couldn't map the SCU\n");
		break;
#endif
	default:
		FUNC7("Unknown platform id %d\n", platid);
	}

	if (FUNC0(fdtbus_bs_tag, RSTMGR_PHYSBASE,
					RSTMGR_SIZE, 0, &rst) != 0)
		FUNC7("Couldn't map the reset manager (RSTMGR)\n");
	if (FUNC0(fdtbus_bs_tag, RAM_PHYSBASE,
					RAM_SIZE, 0, &ram) != 0)
		FUNC7("Couldn't map the first physram page\n");

	/* Invalidate SCU cache tags */
	FUNC3(fdtbus_bs_tag, scu,
		SCU_INV_TAGS_REG, 0x0000ffff);

	/*
	 * Erratum ARM/MP: 764369 (problems with cache maintenance).
	 * Setting the "disable-migratory bit" in the undocumented SCU
	 * Diagnostic Control Register helps work around the problem.
	 */
	reg = FUNC1(fdtbus_bs_tag, scu, SCU_DIAG_CONTROL);
	reg |= (SCU_DIAG_DISABLE_MIGBIT);
	FUNC3(fdtbus_bs_tag, scu, SCU_DIAG_CONTROL, reg);

	/* Put CPU1 to reset state */
	switch (platid) {
#if defined(SOC_ALTERA_ARRIA10)
	case SOCFPGA_ARRIA10:
		bus_space_write_4(fdtbus_bs_tag, rst,
		    RSTMGR_A10_MPUMODRST, MPUMODRST_CPU1);
		break;
#endif
#if defined(SOC_ALTERA_CYCLONE5)
	case SOCFPGA_CYCLONE5:
		bus_space_write_4(fdtbus_bs_tag, rst,
		    RSTMGR_MPUMODRST, MPUMODRST_CPU1);
		break;
#endif
	default:
		FUNC7("Unknown platform id %d\n", platid);
	}

	/* Enable the SCU, then clean the cache on this core */
	reg = FUNC1(fdtbus_bs_tag, scu, SCU_CONTROL_REG);
	reg |= (SCU_CONTROL_ENABLE);
	FUNC3(fdtbus_bs_tag, scu, SCU_CONTROL_REG, reg);

	/* Set up trampoline code */
	mpentry_addr = (char *)FUNC8((vm_offset_t)mpentry);
	FUNC4(fdtbus_bs_tag, ram, 0,
	    (uint32_t *)&socfpga_trampoline, 8);

	FUNC5();

	/* Put CPU1 out from reset */
	switch (platid) {
#if defined(SOC_ALTERA_ARRIA10)
	case SOCFPGA_ARRIA10:
		bus_space_write_4(fdtbus_bs_tag, rst,
		    RSTMGR_A10_MPUMODRST, 0);
		break;
#endif
#if defined(SOC_ALTERA_CYCLONE5)
	case SOCFPGA_CYCLONE5:
		bus_space_write_4(fdtbus_bs_tag, rst,
		    RSTMGR_MPUMODRST, 0);
		break;
#endif
	default:
		FUNC7("Unknown platform id %d\n", platid);
	}

	FUNC6();
	FUNC9();

	FUNC2(fdtbus_bs_tag, scu, SCU_SIZE);
	FUNC2(fdtbus_bs_tag, rst, RSTMGR_SIZE);
	FUNC2(fdtbus_bs_tag, ram, RAM_SIZE);
}