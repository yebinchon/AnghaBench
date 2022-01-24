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
struct omap_tll_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_USBTLL_SYSCONFIG ; 
 int /*<<< orphan*/  OMAP_USBTLL_SYSSTATUS ; 
 int /*<<< orphan*/  USBTLL_CLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int FUNC1 (struct omap_tll_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_tll_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct omap_tll_softc *sc)
{
	unsigned long timeout;

	timeout = (hz < 10) ? 1 : ((100 * hz) / 1000);

	/* Reset the TLL module */
	FUNC2(sc, OMAP_USBTLL_SYSCONFIG, 0x0002);
	while ((FUNC1(sc, OMAP_USBTLL_SYSSTATUS) & (0x01)) == 0x00) {
		/* Sleep for a tick */
		FUNC3("USBRESET", 1);

		if (timeout-- == 0) {
			FUNC0(sc->sc_dev, "operation timed out\n");
			break;
		}
	}

	/* Disable functional and interface clocks for the TLL and HOST modules */
	FUNC4(USBTLL_CLK);
}