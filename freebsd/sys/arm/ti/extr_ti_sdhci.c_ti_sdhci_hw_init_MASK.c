#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int caps; } ;
struct TYPE_4__ {TYPE_1__ host; } ;
struct ti_sdhci_softc {TYPE_2__ slot; int /*<<< orphan*/  baseclk_hz; int /*<<< orphan*/  mmchs_clk_id; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MMCHS_CON ; 
 int MMCHS_CON_DVAL_8_4MS ; 
 int /*<<< orphan*/  MMCHS_SD_CAPA ; 
 int MMCHS_SD_CAPA_VS18 ; 
 int MMCHS_SD_CAPA_VS30 ; 
 int /*<<< orphan*/  MMCHS_SYSCONFIG ; 
 int MMCHS_SYSCONFIG_RESET ; 
 int /*<<< orphan*/  MMCHS_SYSSTATUS ; 
 int MMCHS_SYSSTATUS_RESETDONE ; 
 int MMC_OCR_290_300 ; 
 int MMC_OCR_300_310 ; 
 int MMC_OCR_LOW_VOLTAGE ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL ; 
 int /*<<< orphan*/  SDHCI_POWER_CONTROL ; 
 int SDHCI_RESET_ALL ; 
 int /*<<< orphan*/  SDHCI_SOFTWARE_RESET ; 
 struct ti_sdhci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct ti_sdhci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ti_sdhci_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(device_t dev)
{
	struct ti_sdhci_softc *sc = FUNC1(dev);
	uint32_t regval;
	unsigned long timeout;

	/* Enable the controller and interface/functional clocks */
	if (FUNC5(sc->mmchs_clk_id) != 0) {
		FUNC2(dev, "Error: failed to enable MMC clock\n");
		return;
	}

	/* Get the frequency of the source clock */
	if (FUNC6(sc->mmchs_clk_id,
	    &sc->baseclk_hz) != 0) {
		FUNC2(dev, "Error: failed to get source clock freq\n");
		return;
	}

	/* Issue a softreset to the controller */
	FUNC4(sc, MMCHS_SYSCONFIG, MMCHS_SYSCONFIG_RESET);
	timeout = 1000;
	while (!(FUNC3(sc, MMCHS_SYSSTATUS) &
	    MMCHS_SYSSTATUS_RESETDONE)) {
		if (--timeout == 0) {
			FUNC2(dev,
			    "Error: Controller reset operation timed out\n");
			break;
		}
		FUNC0(100);
	}

	/*
	 * Reset the command and data state machines and also other aspects of
	 * the controller such as bus clock and power.
	 *
	 * If we read the software reset register too fast after writing it we
	 * can get back a zero that means the reset hasn't started yet rather
	 * than that the reset is complete. Per TI recommendations, work around
	 * it by reading until we see the reset bit asserted, then read until
	 * it's clear. We also set the SDHCI_QUIRK_WAITFOR_RESET_ASSERTED quirk
	 * so that the main sdhci driver uses this same logic in its resets.
	 */
	FUNC8(dev, NULL, SDHCI_SOFTWARE_RESET, SDHCI_RESET_ALL);
	timeout = 10000;
	while ((FUNC7(dev, NULL, SDHCI_SOFTWARE_RESET) &
	    SDHCI_RESET_ALL) != SDHCI_RESET_ALL) {
		if (--timeout == 0) {
			break;
		}
		FUNC0(1);
	}
	timeout = 10000;
	while ((FUNC7(dev, NULL, SDHCI_SOFTWARE_RESET) &
	    SDHCI_RESET_ALL)) {
		if (--timeout == 0) {
			FUNC2(dev,
			    "Error: Software reset operation timed out\n");
			break;
		}
		FUNC0(100);
	}

	/*
	 * The attach() routine has examined fdt data and set flags in
	 * slot.host.caps to reflect what voltages we can handle.  Set those
	 * values in the CAPA register.  Empirical testing shows that the
	 * values in this register can be overwritten at any time, but the
	 * manual says that these values should only be set once, "before
	 * initialization" whatever that means, and that they survive a reset.
	 */
	regval = FUNC3(sc, MMCHS_SD_CAPA);
	if (sc->slot.host.caps & MMC_OCR_LOW_VOLTAGE)
		regval |= MMCHS_SD_CAPA_VS18;
	if (sc->slot.host.caps & (MMC_OCR_290_300 | MMC_OCR_300_310))
		regval |= MMCHS_SD_CAPA_VS30;
	FUNC4(sc, MMCHS_SD_CAPA, regval);

	/* Set initial host configuration (1-bit, std speed, pwr off). */
	FUNC8(dev, NULL, SDHCI_HOST_CONTROL, 0);
	FUNC8(dev, NULL, SDHCI_POWER_CONTROL, 0);

	/* Set the initial controller configuration. */
	FUNC4(sc, MMCHS_CON, MMCHS_CON_DVAL_8_4MS);
}