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
struct epit_softc {int clkfreq; int ctlreg; int /*<<< orphan*/  dev; int /*<<< orphan*/ * memres; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  EPIT_CR ; 
#define  EPIT_CR_CLKSRC_HFCLK 130 
#define  EPIT_CR_CLKSRC_IPG 129 
#define  EPIT_CR_CLKSRC_LFCLK 128 
 int EPIT_CR_CLKSRC_SHIFT ; 
 int EPIT_CR_DBGEN ; 
 int EPIT_CR_ENMOD ; 
 int EPIT_CR_RLD ; 
 int EPIT_CR_STOPEN ; 
 int EPIT_CR_SWR ; 
 int EPIT_CR_WAITEN ; 
 int FUNC0 (struct epit_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (struct epit_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct epit_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct epit_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (struct epit_softc*) ; 
 int FUNC8 (struct epit_softc*) ; 
 int FUNC9 () ; 
 int FUNC10 () ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct epit_softc *sc;
	int err, rid;
	uint32_t clksrc;

	sc = FUNC4(dev);
	sc->dev = dev;

	rid = 0;
	sc->memres = FUNC3(sc->dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->memres == NULL) {
		FUNC6(sc->dev, "could not allocate registers\n");
		return (ENXIO);
	}

	/*
	 * For now, use ipg (66 MHz).  Some day we should get this from fdt.
	 */
	clksrc = EPIT_CR_CLKSRC_IPG;

	switch (clksrc) {
	default:
		FUNC6(dev, 
		    "Unsupported clock source '%d', using IPG\n", clksrc);
                /* FALLTHROUGH */
	case EPIT_CR_CLKSRC_IPG:
		sc->clkfreq = FUNC9();
		break;
	case EPIT_CR_CLKSRC_HFCLK:
		sc->clkfreq = FUNC10();
		break;
	case EPIT_CR_CLKSRC_LFCLK:
		sc->clkfreq = 32768;
		break;
	}

	/*
	 * Init: stop operations and clear all options, then set up options and
	 * clock source, then do a soft-reset and wait for it to complete.
	 */
	FUNC1(sc, EPIT_CR, 0);

	sc->ctlreg =
	    (clksrc << EPIT_CR_CLKSRC_SHIFT) |  /* Use selected clock */
	    EPIT_CR_ENMOD  |                    /* Reload counter on enable */
	    EPIT_CR_RLD    |                    /* Reload counter from LR */
	    EPIT_CR_STOPEN |                    /* Run in STOP mode */
	    EPIT_CR_WAITEN |                    /* Run in WAIT mode */
	    EPIT_CR_DBGEN;                      /* Run in DEBUG mode */

	FUNC2(sc, EPIT_CR, sc->ctlreg | EPIT_CR_SWR);
	while (FUNC0(sc, EPIT_CR) & EPIT_CR_SWR)
		continue;

	/*
	 * Unit 0 is the timecounter, 1 (if instantiated) is the eventtimer.
	 */
	if (FUNC5(sc->dev) == 0)
		err = FUNC8(sc);
	else
		err = FUNC7(sc);

	return (err);
}