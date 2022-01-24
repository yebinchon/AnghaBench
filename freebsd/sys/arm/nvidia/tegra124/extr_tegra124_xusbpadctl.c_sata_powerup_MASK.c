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
struct padctl_softc {int /*<<< orphan*/  dev; } ;
struct padctl_lane {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int IOPHY_MISC_PAD_S0_CTL1_IDDQ ; 
 int IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD ; 
 int IOPHY_PLL_S0_CTL1_PLL1_LOCKDET ; 
 int IOPHY_PLL_S0_CTL1_PLL1_MODE ; 
 int IOPHY_PLL_S0_CTL1_PLL_IDDQ ; 
 int IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD ; 
 int IOPHY_PLL_S0_CTL1_PLL_RST_L ; 
 int FUNC1 (struct padctl_softc*,int /*<<< orphan*/ ) ; 
 int USB3_PAD_MUX_SATA_IDDQ_DISABLE ; 
 int /*<<< orphan*/  FUNC2 (struct padctl_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1 ; 
 int /*<<< orphan*/  XUSB_PADCTL_IOPHY_PLL_S0_CTL1 ; 
 int /*<<< orphan*/  XUSB_PADCTL_USB3_PAD_MUX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct padctl_softc *sc, struct padctl_lane *lane)
{
	uint32_t reg;
	int i;

	reg = FUNC1(sc, XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1);
	reg &= ~IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD;
	reg &= ~IOPHY_MISC_PAD_S0_CTL1_IDDQ;
	FUNC2(sc, XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1, reg);

	reg = FUNC1(sc, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
	reg &= ~IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD;
	reg &= ~IOPHY_PLL_S0_CTL1_PLL_IDDQ;
	FUNC2(sc, XUSB_PADCTL_IOPHY_PLL_S0_CTL1, reg);

	reg = FUNC1(sc, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
	reg |= IOPHY_PLL_S0_CTL1_PLL1_MODE;
	FUNC2(sc, XUSB_PADCTL_IOPHY_PLL_S0_CTL1, reg);

	reg = FUNC1(sc, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
	reg |= IOPHY_PLL_S0_CTL1_PLL_RST_L;
	FUNC2(sc, XUSB_PADCTL_IOPHY_PLL_S0_CTL1, reg);

	for (i = 100; i >= 0; i--) {
		reg = FUNC1(sc, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
		if (reg & IOPHY_PLL_S0_CTL1_PLL1_LOCKDET)
			break;
		FUNC0(100);
	}
	if (i <= 0) {
		FUNC3(sc->dev, "Failed to power up SATA phy\n");
		return (ETIMEDOUT);
	}
	reg = FUNC1(sc, XUSB_PADCTL_USB3_PAD_MUX);
	reg |= IOPHY_PLL_S0_CTL1_PLL_RST_L;
	FUNC2(sc, XUSB_PADCTL_USB3_PAD_MUX, reg);

	reg = FUNC1(sc, XUSB_PADCTL_USB3_PAD_MUX);
	reg |= USB3_PAD_MUX_SATA_IDDQ_DISABLE;
	FUNC2(sc, XUSB_PADCTL_USB3_PAD_MUX, reg);

	return (0);
}