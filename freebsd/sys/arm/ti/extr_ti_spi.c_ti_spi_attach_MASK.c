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
struct ti_spi_softc {int sc_numcs; int /*<<< orphan*/  sc_mtx; void* sc_mem_res; void* sc_irq_res; int /*<<< orphan*/  sc_intrhand; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int INVALID_CLK_IDENT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MCSPI_CONF_DPE0 ; 
 int MCSPI_CONF_EPOL ; 
 int MCSPI_CONF_WL_SHIFT ; 
 int /*<<< orphan*/  MCSPI_IRQENABLE ; 
 int /*<<< orphan*/  MCSPI_IRQSTATUS ; 
 int /*<<< orphan*/  MCSPI_MODULCTRL ; 
 int MCSPI_MODULCTRL_SINGLE ; 
 int /*<<< orphan*/  MCSPI_REVISION ; 
 int MCSPI_REVISION_CUSTOM_MSK ; 
 int MCSPI_REVISION_CUSTOM_SHIFT ; 
 int MCSPI_REVISION_FUNC_MSK ; 
 int MCSPI_REVISION_FUNC_SHIFT ; 
 int MCSPI_REVISION_MAJOR_MSK ; 
 int MCSPI_REVISION_MAJOR_SHIFT ; 
 int MCSPI_REVISION_MINOR_MSK ; 
 int MCSPI_REVISION_MINOR_SHIFT ; 
 int MCSPI_REVISION_RTL_MSK ; 
 int MCSPI_REVISION_RTL_SHIFT ; 
 int MCSPI_REVISION_SCHEME_MSK ; 
 int MCSPI_REVISION_SCHEME_SHIFT ; 
 int /*<<< orphan*/  MCSPI_SYSCONFIG ; 
 int MCSPI_SYSCONFIG_SOFTRESET ; 
 int /*<<< orphan*/  MCSPI_SYSSTATUS ; 
 int MCSPI_SYSSTATUS_RESETDONE ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC3 (struct ti_spi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ti_spi_softc*,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ti_spi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 struct ti_spi_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ti_spi_intr ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ti_spi_softc*,int,int) ; 

__attribute__((used)) static int
FUNC21(device_t dev)
{
	int clk_id, err, i, rid, timeout;
	struct ti_spi_softc *sc;
	uint32_t rev;

	sc = FUNC10(dev);
	sc->sc_dev = dev;

	/*
	 * Get the MMCHS device id from FDT.  If it's not there use the newbus
	 * unit number (which will work as long as the devices are in order and
	 * none are skipped in the fdt).  Note that this is a property we made
	 * up and added in freebsd, it doesn't exist in the published bindings.
	 */
	clk_id = FUNC16(dev);
	if (clk_id == INVALID_CLK_IDENT) {
		FUNC11(dev,
		    "failed to get clock based on hwmods property\n");
		return (EINVAL);
	}

	/* Activate the McSPI module. */
	err = FUNC17(clk_id);
	if (err) {
		FUNC11(dev, "Error: failed to activate source clock\n");
		return (err);
	}

	/* Get the number of available channels. */
	if ((FUNC2(FUNC13(dev), "ti,spi-num-cs",
	    &sc->sc_numcs, sizeof(sc->sc_numcs))) <= 0) {
		sc->sc_numcs = 2;
	}

	rid = 0;
	sc->sc_mem_res = FUNC5(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_mem_res) {
		FUNC11(dev, "cannot allocate memory window\n");
		return (ENXIO);
	}

	sc->sc_bst = FUNC15(sc->sc_mem_res);
	sc->sc_bsh = FUNC14(sc->sc_mem_res);

	rid = 0;
	sc->sc_irq_res = FUNC5(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (!sc->sc_irq_res) {
		FUNC7(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		FUNC11(dev, "cannot allocate interrupt\n");
		return (ENXIO);
	}

	/* Hook up our interrupt handler. */
	if (FUNC8(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, ti_spi_intr, sc, &sc->sc_intrhand)) {
		FUNC7(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
		FUNC7(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
		FUNC11(dev, "cannot setup the interrupt handler\n");
		return (ENXIO);
	}

	FUNC12(&sc->sc_mtx, "ti_spi", NULL, MTX_DEF);

	/* Issue a softreset to the controller */
	FUNC4(sc, MCSPI_SYSCONFIG, MCSPI_SYSCONFIG_SOFTRESET);
	timeout = 1000;
	while (!(FUNC3(sc, MCSPI_SYSSTATUS) &
	    MCSPI_SYSSTATUS_RESETDONE)) {
		if (--timeout == 0) {
			FUNC11(dev,
			    "Error: Controller reset operation timed out\n");
			FUNC18(dev);
			return (ENXIO);
		}
		FUNC0(100);
	}

	/* Print the McSPI module revision. */
	rev = FUNC3(sc, MCSPI_REVISION);
	FUNC11(dev,
	    "scheme: %#x func: %#x rtl: %d rev: %d.%d custom rev: %d\n",
	    (rev >> MCSPI_REVISION_SCHEME_SHIFT) & MCSPI_REVISION_SCHEME_MSK,
	    (rev >> MCSPI_REVISION_FUNC_SHIFT) & MCSPI_REVISION_FUNC_MSK,
	    (rev >> MCSPI_REVISION_RTL_SHIFT) & MCSPI_REVISION_RTL_MSK,
	    (rev >> MCSPI_REVISION_MAJOR_SHIFT) & MCSPI_REVISION_MAJOR_MSK,
	    (rev >> MCSPI_REVISION_MINOR_SHIFT) & MCSPI_REVISION_MINOR_MSK,
	    (rev >> MCSPI_REVISION_CUSTOM_SHIFT) & MCSPI_REVISION_CUSTOM_MSK);

	/* Set Master mode, single channel. */
	FUNC4(sc, MCSPI_MODULCTRL, MCSPI_MODULCTRL_SINGLE);

	/* Clear pending interrupts and disable interrupts. */
	FUNC4(sc, MCSPI_IRQENABLE, 0x0);
	FUNC4(sc, MCSPI_IRQSTATUS, 0xffff);

	for (i = 0; i < sc->sc_numcs; i++) {
		/*
		 * Default to SPI mode 0, CS active low, 8 bits word length and
		 * 500kHz clock.
		 */
		FUNC4(sc, FUNC1(i),
		    MCSPI_CONF_DPE0 | MCSPI_CONF_EPOL |
		    (8 - 1) << MCSPI_CONF_WL_SHIFT);
		/* Set initial clock - 500kHz. */
		FUNC20(sc, i, 500000);
	}

#ifdef	TI_SPI_DEBUG
	ti_spi_printr(dev);
#endif

	FUNC9(dev, "spibus", -1);

	return (FUNC6(dev));
}