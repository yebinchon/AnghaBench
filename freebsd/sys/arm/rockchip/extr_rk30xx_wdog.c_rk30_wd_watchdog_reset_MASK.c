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

/* Variables and functions */
 int /*<<< orphan*/  RK30_WDT_BASE ; 
 int /*<<< orphan*/  RK30_WDT_PSIZE ; 
 int /*<<< orphan*/  WDOG_CTRL ; 
 int WDOG_CTRL_EN ; 
 int WDOG_CTRL_RSP_MODE ; 
 int WDOG_CTRL_RST_PULSE ; 
 int /*<<< orphan*/  WDOG_TORR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 

void
FUNC2(void)
{
	bus_space_handle_t bsh;

	FUNC0(fdtbus_bs_tag, RK30_WDT_BASE, RK30_WDT_PSIZE, 0, &bsh);
	FUNC1(fdtbus_bs_tag, bsh, WDOG_TORR, 0);
	FUNC1(fdtbus_bs_tag, bsh, WDOG_CTRL,
	    WDOG_CTRL_EN | WDOG_CTRL_RSP_MODE | WDOG_CTRL_RST_PULSE);

	while (1);
}