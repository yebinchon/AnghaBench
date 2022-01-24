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
struct usb_phy_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int LINKSYSTEM_XHCI_VERSION_CTRL ; 
 int PHYCLKRST_COMMONONN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHYCLKRST_FSEL_24MHZ ; 
 int PHYCLKRST_MPLL_MLTPR_24MHZ ; 
 int PHYCLKRST_PORTRESET ; 
 int PHYCLKRST_REFCLKSEL_EXT_REFCLK ; 
 int PHYCLKRST_REF_SSP_EN ; 
 int PHYCLKRST_RETENABLEN ; 
 int PHYCLKRST_SSC_EN ; 
 int FUNC3 (int) ; 
 int PHYPARAM0_REF_LOSLEVEL ; 
 int PHYPARAM0_REF_LOSLEVEL_MASK ; 
 int PHYPARAM0_REF_USE_PAD ; 
 int PHYPARAM1_PCS_TXDEEMPH ; 
 int PHYPARAM1_PCS_TXDEEMPH_MASK ; 
 int PHYTEST_POWERDOWN_HSP ; 
 int PHYTEST_POWERDOWN_SSP ; 
 int PHYUTMICLKSEL_UTMI_CLKSEL ; 
 int PHYUTMI_OTGDISABLE ; 
 int FUNC4 (struct usb_phy_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_DRD_LINKSYSTEM ; 
 int /*<<< orphan*/  USB_DRD_PHYCLKRST ; 
 int /*<<< orphan*/  USB_DRD_PHYPARAM0 ; 
 int /*<<< orphan*/  USB_DRD_PHYPARAM1 ; 
 int /*<<< orphan*/  USB_DRD_PHYREG0 ; 
 int /*<<< orphan*/  USB_DRD_PHYRESUME ; 
 int /*<<< orphan*/  USB_DRD_PHYTEST ; 
 int /*<<< orphan*/  USB_DRD_PHYUTMI ; 
 int /*<<< orphan*/  USB_DRD_PHYUTMICLKSEL ; 
 int /*<<< orphan*/  FUNC5 (struct usb_phy_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct usb_phy_softc *sc)
{
	int reg;

	/* Reset USB 3.0 PHY */
	FUNC5(sc, USB_DRD_PHYREG0, 0);

	reg = FUNC4(sc, USB_DRD_PHYPARAM0);
	/* PHY CLK src */
	reg &= ~(PHYPARAM0_REF_USE_PAD);
	reg &= ~(PHYPARAM0_REF_LOSLEVEL_MASK);
	reg |= (PHYPARAM0_REF_LOSLEVEL);
	FUNC5(sc, USB_DRD_PHYPARAM0, reg);
	FUNC5(sc, USB_DRD_PHYRESUME, 0);

	reg = (LINKSYSTEM_XHCI_VERSION_CTRL |
	    FUNC1(0x20));
	FUNC5(sc, USB_DRD_LINKSYSTEM, reg);

	reg = FUNC4(sc, USB_DRD_PHYPARAM1);
	reg &= ~(PHYPARAM1_PCS_TXDEEMPH_MASK);
	reg |= (PHYPARAM1_PCS_TXDEEMPH);
	FUNC5(sc, USB_DRD_PHYPARAM1, reg);

	reg = FUNC4(sc, USB_DRD_PHYUTMICLKSEL);
	reg |= (PHYUTMICLKSEL_UTMI_CLKSEL);
	FUNC5(sc, USB_DRD_PHYUTMICLKSEL, reg);

	reg = FUNC4(sc, USB_DRD_PHYTEST);
	reg &= ~(PHYTEST_POWERDOWN_HSP);
	reg &= ~(PHYTEST_POWERDOWN_SSP);
	FUNC5(sc, USB_DRD_PHYTEST, reg);

	FUNC5(sc, USB_DRD_PHYUTMI, PHYUTMI_OTGDISABLE);

	/* Clock */
	reg = (PHYCLKRST_REFCLKSEL_EXT_REFCLK);
	reg |= (FUNC2(PHYCLKRST_FSEL_24MHZ));
	reg |= (PHYCLKRST_MPLL_MLTPR_24MHZ);
	reg |= (FUNC3(0x88));
	reg |= (PHYCLKRST_RETENABLEN |
	    PHYCLKRST_REF_SSP_EN | /* Super speed */
	    PHYCLKRST_SSC_EN | /* Spread spectrum */
	    PHYCLKRST_COMMONONN |
	    PHYCLKRST_PORTRESET);

	FUNC5(sc, USB_DRD_PHYCLKRST, reg);
	FUNC0(50000);
	reg &= ~PHYCLKRST_PORTRESET;
	FUNC5(sc, USB_DRD_PHYCLKRST, reg);

	return (0);
}