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
typedef  int /*<<< orphan*/  uint32_t ;
struct tegra124_pmc_softc {scalar_t__ sysclkreq_high; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  PMC_CNTRL ; 
 int /*<<< orphan*/  PMC_CNTRL_CPU_PWRREQ_OE ; 
 int /*<<< orphan*/  PMC_CNTRL_SYSCLK_OE ; 
 int /*<<< orphan*/  PMC_CNTRL_SYSCLK_POLARITY ; 
 int /*<<< orphan*/  PMC_IO_DPD2_STATUS ; 
 int /*<<< orphan*/  PMC_IO_DPD2_STATUS_HV ; 
 int /*<<< orphan*/  PMC_IO_DPD_STATUS ; 
 int /*<<< orphan*/  PMC_IO_DPD_STATUS_HDMI ; 
 int /*<<< orphan*/  FUNC0 (struct tegra124_pmc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra124_pmc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (struct tegra124_pmc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct tegra124_pmc_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 struct tegra124_pmc_softc* pmc_sc ; 
 int FUNC9 (struct tegra124_pmc_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct tegra124_pmc_softc *sc;
	int rid, rv;
	uint32_t reg;
	phandle_t node;

	sc = FUNC5(dev);
	sc->dev = dev;
	node = FUNC7(dev);

	rv = FUNC9(sc, node);
	if (rv != 0) {
		FUNC6(sc->dev, "Cannot parse FDT data\n");
		return (rv);
	}

	rv = FUNC4(sc->dev, 0, "pclk", &sc->clk);
	if (rv != 0) {
		FUNC6(sc->dev, "Cannot get \"pclk\" clock\n");
		return (ENXIO);
	}

	rid = 0;
	sc->mem_res = FUNC3(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC6(dev, "Cannot allocate memory resources\n");
		return (ENXIO);
	}

	FUNC0(sc);

	/* Enable CPU power request. */
	reg = FUNC1(sc, PMC_CNTRL);
	reg |= PMC_CNTRL_CPU_PWRREQ_OE;
	FUNC2(sc, PMC_CNTRL, reg);

	/* Set sysclk output polarity */
	reg = FUNC1(sc, PMC_CNTRL);
	if (sc->sysclkreq_high)
		reg &= ~PMC_CNTRL_SYSCLK_POLARITY;
	else
		reg |= PMC_CNTRL_SYSCLK_POLARITY;
	FUNC2(sc, PMC_CNTRL, reg);

	/* Enable sysclk request. */
	reg = FUNC1(sc, PMC_CNTRL);
	reg |= PMC_CNTRL_SYSCLK_OE;
	FUNC2(sc, PMC_CNTRL, reg);

	/*
	 * Remove HDMI from deep power down mode.
	 * XXX mote this to HDMI driver
	 */
	reg = FUNC1(sc, PMC_IO_DPD_STATUS);
	reg &= ~ PMC_IO_DPD_STATUS_HDMI;
	FUNC2(sc, PMC_IO_DPD_STATUS, reg);

	reg = FUNC1(sc, PMC_IO_DPD2_STATUS);
	reg &= ~ PMC_IO_DPD2_STATUS_HV;
	FUNC2(sc, PMC_IO_DPD2_STATUS, reg);

	if (pmc_sc != NULL)
		FUNC8("tegra124_pmc: double driver attach");
	pmc_sc = sc;
	return (0);
}