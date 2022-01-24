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
struct tegra_xhci_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  phy_usb3_0; int /*<<< orphan*/  phy_usb2_2; int /*<<< orphan*/  phy_usb2_1; int /*<<< orphan*/  phy_usb2_0; int /*<<< orphan*/  clk_xusb_hs_src; int /*<<< orphan*/  clk_xusb_fs_src; int /*<<< orphan*/  clk_xusb_falcon_src; int /*<<< orphan*/  hwreset_xusb_ss; int /*<<< orphan*/  clk_xusb_ss; int /*<<< orphan*/  hwreset_xusb_host; int /*<<< orphan*/  clk_xusb_host; int /*<<< orphan*/  clk_xusb_gate; int /*<<< orphan*/  supply_hvdd_usb_ss_pll_e; int /*<<< orphan*/  supply_hvdd_usb_ss; int /*<<< orphan*/  supply_avdd_usb_ss_pll; int /*<<< orphan*/  supply_avdd_pll_erefe; int /*<<< orphan*/  supply_avdd_pll_utmip; int /*<<< orphan*/  supply_avdd_usb; int /*<<< orphan*/  supply_dvddio_pex; int /*<<< orphan*/  supply_avddio_pex; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEGRA_POWERGATE_XUSBA ; 
 int /*<<< orphan*/  TEGRA_POWERGATE_XUSBC ; 
 int /*<<< orphan*/  TEGRA_XHCI_SS_HIGH_SPEED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct tegra_xhci_softc *sc)
{
	int rv;

	rv = FUNC3(sc->hwreset_xusb_host);
	if (rv != 0) {
		FUNC2(sc->dev, "Cannot reset 'xusb_host' reset\n");
		return (rv);
	}
	rv = FUNC3(sc->hwreset_xusb_ss);
	if (rv != 0) {
		FUNC2(sc->dev, "Cannot reset 'xusb_ss' reset\n");
		return (rv);
	}

	rv = FUNC5(sc->supply_avddio_pex);
	if (rv != 0) {
		FUNC2(sc->dev,
		    "Cannot enable 'avddio_pex' regulator\n");
		return (rv);
	}
	rv = FUNC5(sc->supply_dvddio_pex);
	if (rv != 0) {
		FUNC2(sc->dev,
		    "Cannot enable 'dvddio_pex' regulator\n");
		return (rv);
	}
	rv = FUNC5(sc->supply_avdd_usb);
	if (rv != 0) {
		FUNC2(sc->dev,
		    "Cannot enable 'avdd_usb' regulator\n");
		return (rv);
	}
	rv = FUNC5(sc->supply_avdd_pll_utmip);
	if (rv != 0) {
		FUNC2(sc->dev,
		    "Cannot enable 'avdd_pll_utmip-5v' regulator\n");
		return (rv);
	}
	rv = FUNC5(sc->supply_avdd_pll_erefe);
	if (rv != 0) {
		FUNC2(sc->dev,
		    "Cannot enable 'avdd_pll_erefe' regulator\n");
		return (rv);
	}
	rv = FUNC5(sc->supply_avdd_usb_ss_pll);
	if (rv != 0) {
		FUNC2(sc->dev,
		    "Cannot enable 'avdd_usb_ss_pll' regulator\n");
		return (rv);
	}
	rv = FUNC5(sc->supply_hvdd_usb_ss);
	if (rv != 0) {
		FUNC2(sc->dev,
		    "Cannot enable 'hvdd_usb_ss' regulator\n");
		return (rv);
	}
	rv = FUNC5(sc->supply_hvdd_usb_ss_pll_e);
	if (rv != 0) {
		FUNC2(sc->dev,
		    "Cannot enable 'hvdd_usb_ss_pll_e' regulator\n");
		return (rv);
	}

	/* Power off XUSB host and XUSB SS domains. */
	rv = FUNC6(TEGRA_POWERGATE_XUSBA);
	if (rv != 0) {
		FUNC2(sc->dev, "Cannot powerdown  'xusba' domain\n");
		return (rv);
	}
	rv = FUNC6(TEGRA_POWERGATE_XUSBC);
	if (rv != 0) {
		FUNC2(sc->dev, "Cannot powerdown  'xusbc' domain\n");
		return (rv);
	}

	/* Setup XUSB ss_src clock first */
	FUNC1(sc->clk_xusb_ss, TEGRA_XHCI_SS_HIGH_SPEED, 0);
	if (rv != 0)
		return (rv);

	/* The XUSB gate clock must be enabled before XUSBA can be powered. */
	rv = FUNC0(sc->clk_xusb_gate);
	if (rv != 0) {
		FUNC2(sc->dev,
		    "Cannot enable 'xusb_gate' clock\n");
		return (rv);
	}

	/* Power on XUSB host and XUSB SS domains. */
	rv = FUNC7(TEGRA_POWERGATE_XUSBC,
	    sc->clk_xusb_host, sc->hwreset_xusb_host);
	if (rv != 0) {
		FUNC2(sc->dev, "Cannot powerup 'xusbc' domain\n");
		return (rv);
	}
	rv = FUNC7(TEGRA_POWERGATE_XUSBA,
	    sc->clk_xusb_ss, sc->hwreset_xusb_ss);
	if (rv != 0) {
		FUNC2(sc->dev, "Cannot powerup 'xusba' domain\n");
		return (rv);
	}

	/* Enable rest of clocks */
	rv = FUNC0(sc->clk_xusb_falcon_src);
	if (rv != 0) {
		FUNC2(sc->dev,
		    "Cannot enable 'xusb_falcon_src' clock\n");
		return (rv);
	}
	rv = FUNC0(sc->clk_xusb_fs_src);
	if (rv != 0) {
		FUNC2(sc->dev,
		    "Cannot enable 'xusb_fs_src' clock\n");
		return (rv);
	}
	rv = FUNC0(sc->clk_xusb_hs_src);
	if (rv != 0) {
		FUNC2(sc->dev,
		    "Cannot enable 'xusb_hs_src' clock\n");
		return (rv);
	}

	rv = FUNC4(sc->phy_usb2_0);
	if (rv != 0) {
		FUNC2(sc->dev, "Cannot enable USB2_0 phy\n");
		return (rv);
	}
	rv = FUNC4(sc->phy_usb2_1);
	if (rv != 0) {
		FUNC2(sc->dev, "Cannot enable USB2_1 phy\n");
		return (rv);
	}
	rv = FUNC4(sc->phy_usb2_2);
	if (rv != 0) {
		FUNC2(sc->dev, "Cannot enable USB2_2 phy\n");
		return (rv);
	}
	rv = FUNC4(sc->phy_usb3_0);
	if (rv != 0) {
		FUNC2(sc->dev, "Cannot enable USB3_0 phy\n");
		return (rv);
	}

	return (0);
}