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
typedef  scalar_t__ bus_space_handle_t ;

/* Variables and functions */
 scalar_t__ CONTROL_CORE_PAD0_GPMC_WAIT1 ; 
 scalar_t__ CONTROL_CORE_PAD1_KPD_COL2 ; 
 scalar_t__ CONTROL_WKUP_PAD0_FREF_CLK3_OUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ GPIO1_CLEARDATAOUT ; 
 scalar_t__ GPIO1_OE ; 
 scalar_t__ GPIO1_SETDATAOUT ; 
 scalar_t__ GPIO2_CLEARDATAOUT ; 
 scalar_t__ GPIO2_OE ; 
 scalar_t__ GPIO2_SETDATAOUT ; 
 int /*<<< orphan*/  OMAP44XX_GPIO1_HWBASE ; 
 int /*<<< orphan*/  OMAP44XX_GPIO1_SIZE ; 
 int /*<<< orphan*/  OMAP44XX_GPIO2_HWBASE ; 
 int /*<<< orphan*/  OMAP44XX_GPIO2_SIZE ; 
 int /*<<< orphan*/  OMAP44XX_SCM_PADCONF_HWBASE ; 
 int /*<<< orphan*/  OMAP44XX_SCM_PADCONF_SIZE ; 
 int /*<<< orphan*/  OMAP44XX_SCRM_HWBASE ; 
 int /*<<< orphan*/  OMAP44XX_SCRM_SIZE ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 
 scalar_t__ SCRM_AUXCLK3 ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(void)
{
	bus_space_handle_t scrm_addr, gpio1_addr, gpio2_addr, scm_addr;

	if (FUNC4(fdtbus_bs_tag, OMAP44XX_SCRM_HWBASE,
	    OMAP44XX_SCRM_SIZE, 0, &scrm_addr) != 0)
		FUNC6("Couldn't map SCRM registers");
	if (FUNC4(fdtbus_bs_tag, OMAP44XX_GPIO1_HWBASE, 
	    OMAP44XX_GPIO1_SIZE, 0, &gpio1_addr) != 0)
		FUNC6("Couldn't map GPIO1 registers");
	if (FUNC4(fdtbus_bs_tag, OMAP44XX_GPIO2_HWBASE,
	    OMAP44XX_GPIO2_SIZE, 0, &gpio2_addr) != 0)
		FUNC6("Couldn't map GPIO2 registers");
	if (FUNC4(fdtbus_bs_tag, OMAP44XX_SCM_PADCONF_HWBASE,
	    OMAP44XX_SCM_PADCONF_SIZE, 0, &scm_addr) != 0)
		FUNC6("Couldn't map SCM Padconf registers");

	

	/* Need to set FREF_CLK3_OUT to 19.2 MHz and pump it out on pin GPIO_WK31.
	 * We know the SYS_CLK is 38.4Mhz and therefore to get the needed 19.2Mhz,
	 * just use a 2x divider and ensure the SYS_CLK is used as the source.
	 */
	FUNC3(scrm_addr + SCRM_AUXCLK3, (1 << 16) |    /* Divider of 2 */
	                          (0 << 1) |     /* Use the SYS_CLK as the source */
	                          (1 << 8));     /* Enable the clock */

	/* Enable the clock out to the pin (GPIO_WK31). 
	 *   muxmode=fref_clk3_out, pullup/down=disabled, input buffer=disabled,
	 *   wakeup=disabled.
	 */
	FUNC2(scm_addr + CONTROL_WKUP_PAD0_FREF_CLK3_OUT, 0x0000);


	/* Disable the power to the USB hub, drive GPIO1 low */
	FUNC3(gpio1_addr + GPIO1_OE, FUNC1(gpio1_addr + 
	    GPIO1_OE) & ~(1UL << 1));
	FUNC3(gpio1_addr + GPIO1_CLEARDATAOUT, (1UL << 1));
	FUNC2(scm_addr + CONTROL_CORE_PAD1_KPD_COL2, 0x0003);
	
	
	/* Reset the USB PHY and Hub using GPIO_62 */
	FUNC3(gpio2_addr + GPIO2_OE, 
	    FUNC1(gpio2_addr + GPIO2_OE) & ~(1UL << 30));
	FUNC3(gpio2_addr + GPIO2_CLEARDATAOUT, (1UL << 30));
	FUNC2(scm_addr + CONTROL_CORE_PAD0_GPMC_WAIT1, 0x0003);
	FUNC0(10);
	FUNC3(gpio2_addr + GPIO2_SETDATAOUT, (1UL << 30));

	
	/* Enable power to the hub (GPIO_1) */
	FUNC3(gpio1_addr + GPIO1_SETDATAOUT, (1UL << 1));
	FUNC5(fdtbus_bs_tag, scrm_addr, OMAP44XX_SCRM_SIZE);
	FUNC5(fdtbus_bs_tag, gpio1_addr, OMAP44XX_GPIO1_SIZE);
	FUNC5(fdtbus_bs_tag, gpio2_addr, OMAP44XX_GPIO2_SIZE);
	FUNC5(fdtbus_bs_tag, scm_addr, OMAP44XX_SCM_PADCONF_SIZE);
}