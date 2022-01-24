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
struct bcm_pwm_softc {int freq; int period; int ratio; int period2; int ratio2; int /*<<< orphan*/  sc_mem_res; int /*<<< orphan*/  sc_m_bsh; int /*<<< orphan*/  sc_m_bst; int /*<<< orphan*/ * clkman; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_pwm_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcm_pwm_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct bcm_pwm_softc *sc;
	int rid;

	if (FUNC6(dev) != 0) {
		FUNC7(dev, "only one PWM controller supported\n");
		return (ENXIO);
	}

	sc = FUNC5(dev);
	sc->sc_dev = dev;

	sc->clkman = FUNC4(FUNC3("bcm2835_clkman"), 0);
	if (sc->clkman == NULL) {
		FUNC7(dev, "cannot find Clock Manager\n");
		return (ENXIO);
	}

	rid = 0;
	sc->sc_mem_res = FUNC1(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_mem_res) {
		FUNC7(dev, "cannot allocate memory window\n");
		return (ENXIO);
	}

	sc->sc_m_bst = FUNC9(sc->sc_mem_res);
	sc->sc_m_bsh = FUNC8(sc->sc_mem_res);

	/* Add sysctl nodes. */
	FUNC0(sc);

	sc->freq = 125000000; /* 125 Mhz */
	sc->period = 10000;   /* 12.5 khz */
	sc->ratio = 2500;     /* 25% */
	sc->period2 = 10000;  /* 12.5 khz */
	sc->ratio2 = 2500;    /* 25% */

	return (FUNC2(dev));
}