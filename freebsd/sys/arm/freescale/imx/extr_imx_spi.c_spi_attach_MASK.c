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
struct spi_softc {int debug; int /*<<< orphan*/  spibus; int /*<<< orphan*/  dev; int /*<<< orphan*/ * cspins; int /*<<< orphan*/  inthandle; int /*<<< orphan*/ * intres; int /*<<< orphan*/ * memres; int /*<<< orphan*/  mtx; int /*<<< orphan*/  basefreq; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  ich_func_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RWTUN ; 
 int /*<<< orphan*/  CTLREG_CMODES_MASTER ; 
 int /*<<< orphan*/  ECSPI_CTLREG ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (struct spi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ bus_generic_attach ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct spi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct spi_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spi_intr ; 

__attribute__((used)) static int
FUNC20(device_t dev)
{
	struct spi_softc *sc = FUNC9(dev);
	phandle_t node;
	int err, idx, rid;

	sc->dev = dev;
	sc->basefreq = FUNC15();

	FUNC16(&sc->mtx, FUNC8(dev), NULL, MTX_DEF);

	/* Set up debug-enable sysctl. */
	FUNC0(FUNC10(sc->dev), 
	    FUNC1(FUNC11(sc->dev)),
	    OID_AUTO, "debug", CTLFLAG_RWTUN, &sc->debug, 0,
	    "Enable debug, higher values = more info");

	/* Allocate mmio register access resources. */
	rid = 0;
	sc->memres = FUNC3(sc->dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->memres == NULL) {
		FUNC12(sc->dev, "could not allocate registers\n");
		FUNC19(sc->dev);
		return (ENXIO);
	}

	/* Allocate interrupt resources and set up handler. */
	rid = 0;
	sc->intres = FUNC3(sc->dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->intres == NULL) {
		FUNC12(sc->dev, "could not allocate interrupt\n");
		FUNC7(sc->dev);
		return (ENXIO);
	}
	err = FUNC4(sc->dev, sc->intres, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, spi_intr, sc, &sc->inthandle);
	if (err != 0) {
		FUNC12(sc->dev, "could not setup interrupt handler");
		FUNC7(sc->dev);
		return (ENXIO);
	}

	/* Allocate gpio pins for configured chip selects. */
	node = FUNC18(sc->dev);
	for (idx = 0; idx < FUNC17(sc->cspins); ++idx) {
		err = FUNC13(sc->dev, node, "cs-gpios",
		    idx, &sc->cspins[idx]);
		if (err == 0) {
			FUNC14(sc->cspins[idx], GPIO_PIN_OUTPUT);
		} else if (sc->debug >= 2) {
			FUNC12(sc->dev,
			    "cannot configure gpio for chip select %u\n", idx);
		}
	}

	/*
	 * Hardware init: put all channels into Master mode, turn off the enable
	 * bit (gates off clocks); we only enable the hardware while xfers run.
	 */
	FUNC2(sc, ECSPI_CTLREG, CTLREG_CMODES_MASTER);

	/*
	 * Add the spibus driver as a child, and setup a one-shot intrhook to
	 * attach it after interrupts are working.  It will attach actual SPI
	 * devices as its children, and those devices may need to do IO during
	 * their attach. We can't do IO until timers and interrupts are working.
	 */
	sc->spibus = FUNC6(dev, "spibus", -1);
	FUNC5((ich_func_t)bus_generic_attach, dev);

	return (0);
}