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
typedef  int /*<<< orphan*/  timeout ;
struct imx_wdog_softc {int sc_pde_enabled; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_ih; int /*<<< orphan*/ * sc_res; int /*<<< orphan*/  sc_mtx; } ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct imx_wdog_softc*,int /*<<< orphan*/ ) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 size_t IRQRES ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int FUNC2 (struct imx_wdog_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WDOG_CR_REG ; 
 int WDOG_CR_WDT ; 
 int /*<<< orphan*/  WDOG_ICR_REG ; 
 int WDOG_ICR_WIE ; 
 int WDOG_MCR_PDE ; 
 int /*<<< orphan*/  WDOG_MCR_REG ; 
 int /*<<< orphan*/  FUNC3 (struct imx_wdog_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct imx_wdog_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct imx_wdog_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  imx_watchdog ; 
 int /*<<< orphan*/  FUNC10 (struct imx_wdog_softc*,int) ; 
 int /*<<< orphan*/  imx_wdog_intr ; 
 int /*<<< orphan*/  imx_wdog_spec ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  watchdog_list ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct imx_wdog_softc *sc;
	pcell_t timeout;

	sc = FUNC8(dev);
	sc->sc_dev = dev;

	if (FUNC4(dev, imx_wdog_spec, sc->sc_res)) {
		FUNC9(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	FUNC11(&sc->sc_mtx, FUNC7(dev), "imx_wdt", MTX_DEF);

	/*
	 * If we're configured to assert an external reset signal, set up the
	 * hardware to do so, and install an interrupt handler whose only
	 * purpose is to backstop the external reset.  Don't worry if the
	 * interrupt setup fails, since it's only a backstop measure.
	 */
	if (FUNC13(sc->sc_dev, "fsl,ext-reset-output")) {
		FUNC3(sc, WDOG_CR_REG, WDOG_CR_WDT | FUNC2(sc, WDOG_CR_REG));
		FUNC5(sc->sc_dev, sc->sc_res[IRQRES],
		    INTR_TYPE_MISC | INTR_MPSAFE, imx_wdog_intr, NULL, sc,
		    &sc->sc_ih);
		FUNC3(sc, WDOG_ICR_REG, WDOG_ICR_WIE); /* Enable, count is 0. */
	}

	/*
	 * Note whether the rom-boot so-called "power-down" watchdog is active,
	 * so we can disable it when the regular watchdog is first enabled.
	 */
	if (FUNC2(sc, WDOG_MCR_REG) & WDOG_MCR_PDE)
		sc->sc_pde_enabled = true;

	FUNC0(watchdog_list, imx_watchdog, sc, 0);

	/* If there is a timeout-sec property, activate the watchdog. */
	if (FUNC1(FUNC12(sc->sc_dev), "timeout-sec",
	    &timeout, sizeof(timeout)) == sizeof(timeout)) {
		if (timeout < 1 || timeout > 128) {
			FUNC9(sc->sc_dev, "ERROR: bad timeout-sec "
			    "property value %u, using 128\n", timeout);
			timeout = 128;
		}
		FUNC10(sc, timeout);
		FUNC9(sc->sc_dev, "watchdog enabled using "
		    "timeout-sec property value %u\n", timeout);
	}

	/*
	 * The watchdog hardware cannot be disabled, so there's little point in
	 * coding up a detach() routine to carefully tear everything down, just
	 * make the device busy so that detach can't happen.
	 */
	FUNC6(sc->sc_dev);
	return (0);
}