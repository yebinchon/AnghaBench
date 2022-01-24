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

/* Variables and functions */
 int /*<<< orphan*/  OMAP_USBHOST_INSNREG05_ULPI ; 
 int OMAP_USBHOST_INSNREG05_ULPI_CONTROL_SHIFT ; 
 int OMAP_USBHOST_INSNREG05_ULPI_OPSEL_SHIFT ; 
 unsigned int OMAP_USBHOST_INSNREG05_ULPI_PORTSEL_SHIFT ; 
 int OMAP_USBHOST_INSNREG05_ULPI_REGADD_SHIFT ; 
 int /*<<< orphan*/  ULPI_FUNC_CTRL ; 
 int ULPI_FUNC_CTRL_RESET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int FUNC2 (struct omap_ehci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_ehci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static void 
FUNC5(struct omap_ehci_softc *isc, unsigned int port)
{
	unsigned long timeout = (hz < 10) ? 1 : ((100 * hz) / 1000);
	uint32_t reg;

	reg = ULPI_FUNC_CTRL_RESET
		/* FUNCTION_CTRL_SET register */
		| (FUNC0(ULPI_FUNC_CTRL) << OMAP_USBHOST_INSNREG05_ULPI_REGADD_SHIFT)
		/* Write */
		| (2 << OMAP_USBHOST_INSNREG05_ULPI_OPSEL_SHIFT)
		/* PORTn */
		| ((port + 1) << OMAP_USBHOST_INSNREG05_ULPI_PORTSEL_SHIFT)
		/* start ULPI access*/
		| (1 << OMAP_USBHOST_INSNREG05_ULPI_CONTROL_SHIFT);

	FUNC3(isc, OMAP_USBHOST_INSNREG05_ULPI, reg);

	/* Wait for ULPI access completion */
	while ((FUNC2(isc, OMAP_USBHOST_INSNREG05_ULPI)
	       & (1 << OMAP_USBHOST_INSNREG05_ULPI_CONTROL_SHIFT))) {

		/* Sleep for a tick */
		FUNC4("USBPHY_RESET", 1);
		
		if (timeout-- == 0) {
			FUNC1(isc->sc_dev, "PHY reset operation timed out\n");
			break;
		}
	}
}