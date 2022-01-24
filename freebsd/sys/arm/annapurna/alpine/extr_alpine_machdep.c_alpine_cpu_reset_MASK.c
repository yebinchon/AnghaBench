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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  platform_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int INT_ENABLE ; 
 int LOAD_MIN ; 
 int RESET_ENABLE ; 
 int UNLOCK ; 
 int /*<<< orphan*/  WDTCONTROL ; 
 int /*<<< orphan*/  WDTLOAD ; 
 int /*<<< orphan*/  WDTLOCK ; 
 scalar_t__ al_devmap_pa ; 
 int FUNC0 (scalar_t__*,scalar_t__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(platform_t plat)
{
	uint32_t wdbase, wdsize;
	bus_addr_t wdbaddr;
	int ret;

	ret = FUNC0(&wdbase, &wdsize);
	if (ret) {
		FUNC3("Unable to get WDT base, do power down manually...");
		goto infinite;
	}

	ret = FUNC1(fdtbus_bs_tag, al_devmap_pa + wdbase,
	    wdsize, 0, &wdbaddr);
	if (ret) {
		FUNC3("Unable to map WDT base, do power down manually...");
		goto infinite;
	}

	FUNC2(fdtbus_bs_tag, wdbaddr, WDTLOCK, UNLOCK);
	FUNC2(fdtbus_bs_tag, wdbaddr, WDTLOAD, LOAD_MIN);
	FUNC2(fdtbus_bs_tag, wdbaddr, WDTCONTROL,
	    INT_ENABLE | RESET_ENABLE);

infinite:
	while (1) {}
}