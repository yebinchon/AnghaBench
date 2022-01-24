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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  platform_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  PMC_CONTROL_REG ; 
 int /*<<< orphan*/  PMC_PHYSBASE ; 
 int /*<<< orphan*/  PMC_SCRATCH0 ; 
 int PMC_SCRATCH0_MODE_BOOTLOADER ; 
 int PMC_SCRATCH0_MODE_MASK ; 
 int /*<<< orphan*/  PMC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(platform_t plat)
{
	bus_space_handle_t pmc;
	uint32_t reg;

	FUNC4("Resetting...\n");
	FUNC0(fdtbus_bs_tag, PMC_PHYSBASE, PMC_SIZE, 0, &pmc);

	reg = FUNC1(fdtbus_bs_tag, pmc, PMC_SCRATCH0);
	reg &= PMC_SCRATCH0_MODE_MASK;
	FUNC2(fdtbus_bs_tag, pmc, PMC_SCRATCH0,
	   reg | PMC_SCRATCH0_MODE_BOOTLOADER); 	/* boot to bootloader */
	FUNC1(fdtbus_bs_tag, pmc, PMC_SCRATCH0);

	reg = FUNC1(fdtbus_bs_tag, pmc, PMC_CONTROL_REG);
	FUNC5();
	FUNC3();
	FUNC2(fdtbus_bs_tag, pmc, PMC_CONTROL_REG, reg | 0x10);
	FUNC1(fdtbus_bs_tag, pmc, PMC_CONTROL_REG);
	while(1)
		;

}