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
typedef  int /*<<< orphan*/  platform_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPUCFG_BASE ; 
 int /*<<< orphan*/  CPUCFG_SIZE ; 
 int /*<<< orphan*/  CPUXCFG_BASE ; 
 int /*<<< orphan*/  CPUXCFG_SIZE ; 
 int /*<<< orphan*/  PRCM_BASE ; 
 int /*<<< orphan*/  PRCM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(platform_t plat)
{
	bus_space_handle_t cpuscfg, cpuxcfg, prcm;

	if (FUNC1(fdtbus_bs_tag, CPUCFG_BASE, CPUCFG_SIZE,
	    0, &cpuscfg) != 0)
		FUNC4("Couldn't map the CPUCFG\n");
	if (FUNC1(fdtbus_bs_tag, CPUXCFG_BASE, CPUXCFG_SIZE,
	    0, &cpuxcfg) != 0)
		FUNC4("Couldn't map the CPUXCFG\n");
	if (FUNC1(fdtbus_bs_tag, PRCM_BASE, PRCM_SIZE, 0,
	    &prcm) != 0)
		FUNC4("Couldn't map the PRCM\n");

	FUNC0(cpuscfg, cpuxcfg, prcm);
	FUNC3();
	FUNC5();
	FUNC2(fdtbus_bs_tag, cpuxcfg, CPUXCFG_SIZE);
	FUNC2(fdtbus_bs_tag, cpuscfg, CPUCFG_SIZE);
	FUNC2(fdtbus_bs_tag, prcm, PRCM_SIZE);
}