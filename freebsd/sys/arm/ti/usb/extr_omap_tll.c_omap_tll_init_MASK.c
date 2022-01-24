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
 int EINVAL ; 
 int /*<<< orphan*/  OMAP_USBTLL_SYSCONFIG ; 
 int /*<<< orphan*/  OMAP_USBTLL_SYSSTATUS ; 
 int TLL_SYSCONFIG_AUTOIDLE ; 
 int TLL_SYSCONFIG_CACTIVITY ; 
 int TLL_SYSCONFIG_ENAWAKEUP ; 
 int TLL_SYSCONFIG_SIDLE_SMART_IDLE ; 
 int TLL_SYSCONFIG_SOFTRESET ; 
 int TLL_SYSSTATUS_RESETDONE ; 
 int /*<<< orphan*/  USBTLL_CLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int FUNC1 (struct omap_tll_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_tll_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct omap_tll_softc *sc)
{
	unsigned long timeout;
	int ret = 0;

	/* Enable the USB TLL */
	FUNC5(USBTLL_CLK);

	/* Perform TLL soft reset, and wait until reset is complete */
	FUNC2(sc, OMAP_USBTLL_SYSCONFIG, TLL_SYSCONFIG_SOFTRESET);

	/* Set the timeout to 100ms*/
	timeout = (hz < 10) ? 1 : ((100 * hz) / 1000);

	/* Wait for TLL reset to complete */
	while ((FUNC1(sc, OMAP_USBTLL_SYSSTATUS) &
	        TLL_SYSSTATUS_RESETDONE) == 0x00) {

		/* Sleep for a tick */
		FUNC3("USBRESET", 1);

		if (timeout-- == 0) {
			FUNC0(sc->sc_dev, "TLL reset operation timed out\n");
			ret = EINVAL;
			goto err_sys_status;
		}
	}

	/* CLOCKACTIVITY = 1 : OCP-derived internal clocks ON during idle
	 * SIDLEMODE = 2     : Smart-idle mode. Sidleack asserted after Idlereq
	 *                     assertion when no more activity on the USB.
	 * ENAWAKEUP = 1     : Wakeup generation enabled
	 */
	FUNC2(sc, OMAP_USBTLL_SYSCONFIG, TLL_SYSCONFIG_ENAWAKEUP |
	                                            TLL_SYSCONFIG_AUTOIDLE |
	                                            TLL_SYSCONFIG_SIDLE_SMART_IDLE |
	                                            TLL_SYSCONFIG_CACTIVITY);

	return(0);

err_sys_status:
	/* Disable the TLL clocks */
	FUNC4(USBTLL_CLK);

	return(ret);
}