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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CCGR_CLK_MODE_ALWAYS ; 
 int /*<<< orphan*/  CCGR_USB_PHY_CLK ; 
 int /*<<< orphan*/  CCMC_CSCMR1 ; 
 int CSCMR1_USBPHY_CLK_SEL_SHIFT ; 
 scalar_t__ IMXSOC_51 ; 
 scalar_t__ IMXSOC_53 ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccm_softc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 

void
FUNC5(device_t dev)
{
	uint32_t regval;

	/*
	 * Select PLL3 as the source for the USBPHY clock.  U-boot does this 
	 * only for imx53, but the bit exists on imx51.  That seems a bit
	 * strange, but we'll go with it until more is known.
	 */
	if (FUNC4() == IMXSOC_53) {
		regval = FUNC1(ccm_softc, CCMC_CSCMR1);
		regval |= 1 << CSCMR1_USBPHY_CLK_SEL_SHIFT;
		FUNC2(ccm_softc, CCMC_CSCMR1, regval);
	}

	/*
	 * For the imx51 there's just one phy gate control, enable it.
	 */
	if (FUNC4() == IMXSOC_51) {
		FUNC3(CCGR_USB_PHY_CLK, CCGR_CLK_MODE_ALWAYS);
		return;
	}

	/*
	 * For imx53 we don't have a full set of clock defines yet, but the
	 * datasheet says:
	 *   gate reg 4, bits 13-12 usb ph2 clock (usb_phy2_clk_enable)
	 *   gate reg 4, bits 11-10 usb ph1 clock (usb_phy1_clk_enable)
	 *
	 * We should use the fdt data for the device to figure out which of
	 * the two we're working on, but for now just turn them both on.
	 */
	if (FUNC4() == IMXSOC_53) {
		FUNC3(FUNC0(4, 5), CCGR_CLK_MODE_ALWAYS);
		FUNC3(FUNC0(4, 6), CCGR_CLK_MODE_ALWAYS);
		return;
	}
}