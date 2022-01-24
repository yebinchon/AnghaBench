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
struct omap_uhh_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_USBHOST_UHH_SYSCONFIG ; 
 int /*<<< orphan*/  OMAP_USBHOST_UHH_SYSSTATUS ; 
 int /*<<< orphan*/  USBHSHOST_CLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int FUNC1 (struct omap_uhh_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_uhh_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct omap_uhh_softc *isc)
{
	unsigned long timeout;

	FUNC0(isc->sc_dev, "Stopping TI EHCI USB Controller\n");

	/* Set the timeout */
	if (hz < 10)
		timeout = 1;
	else
		timeout = (100 * hz) / 1000;

	/* Reset the UHH, OHCI and EHCI modules */
	FUNC2(isc, OMAP_USBHOST_UHH_SYSCONFIG, 0x0002);
	while ((FUNC1(isc, OMAP_USBHOST_UHH_SYSSTATUS) & 0x07) == 0x00) {
		/* Sleep for a tick */
		FUNC3("USBRESET", 1);

		if (timeout-- == 0) {
			FUNC0(isc->sc_dev, "operation timed out\n");
			break;
		}
	}

	/* Disable functional and interface clocks for the TLL and HOST modules */
	FUNC4(USBHSHOST_CLK);

	FUNC0(isc->sc_dev, "Clock to USB host has been disabled\n");
}