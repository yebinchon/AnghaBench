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
struct omap_ehci_softc {int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ EHCI_HCD_OMAP_MODE_PHY ; 
 int OMAP_HS_USB_PORTS ; 
 int /*<<< orphan*/  OMAP_USBHOST_USBCMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct omap_ehci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_ehci_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_ehci_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct omap_ehci_softc *isc)
{
	uint32_t reg = 0;
	int i;
	device_t uhh_dev;
	
	uhh_dev = FUNC0(isc->sc_dev);
	FUNC1(isc->sc_dev, "Starting TI EHCI USB Controller\n");

	/* Set the interrupt threshold control, it controls the maximum rate at
	 * which the host controller issues interrupts.  We set it to 1 microframe
	 * at startup - the default is 8 mircoframes (equates to 1ms).
	 */
	reg = FUNC2(isc, OMAP_USBHOST_USBCMD);
	reg &= 0xff00ffff;
	reg |= (1 << 16);
	FUNC4(isc, OMAP_USBHOST_USBCMD, reg);

	/* Soft reset the PHY using PHY reset command over ULPI */
	for (i = 0; i < OMAP_HS_USB_PORTS; i++) {
		if (FUNC5(uhh_dev, i) == EHCI_HCD_OMAP_MODE_PHY)
			FUNC3(isc, i);

	}

	return(0);
}