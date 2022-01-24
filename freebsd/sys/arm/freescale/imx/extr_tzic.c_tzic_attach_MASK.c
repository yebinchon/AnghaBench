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
struct tzic_softc {int /*<<< orphan*/ * tzicregs; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTCNTL_EN ; 
 int INTCNTL_NSEN ; 
 int INTCNTL_NSEN_MASK ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TZIC_INTCNTL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TZIC_PRIOMASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  TZIC_SYNCCTRL ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct tzic_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (struct tzic_softc*) ; 
 struct tzic_softc* tzic_sc ; 
 int /*<<< orphan*/  FUNC7 (struct tzic_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct tzic_softc *sc = FUNC4(dev);
	int i;

	if (tzic_sc)
		return (ENXIO);
	tzic_sc = sc;
	sc->dev = dev;

	i = 0;
	sc->tzicregs = FUNC3(dev, SYS_RES_MEMORY, &i,
	    RF_ACTIVE);
	if (sc->tzicregs == NULL) {
		FUNC5(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* route all interrupts to IRQ.  secure interrupts are for FIQ */
	for (i = 0; i < 4; i++)
		FUNC7(sc, FUNC1(i), 0xffffffff);

	/* disable all interrupts */
	for (i = 0; i < 4; i++)
		FUNC7(sc, FUNC0(i), 0xffffffff);

	/* Set all interrupts to priority 0 (max). */
	for (i = 0; i < 128 / 4; ++i)
		FUNC7(sc, FUNC2(i), 0);

	/*
	 * Set priority mask to lowest (unmasked) prio, set synchronizer to
	 * low-latency mode (as opposed to low-power), enable the controller.
	 */
	FUNC7(sc, TZIC_PRIOMASK, 0xff);
	FUNC7(sc, TZIC_SYNCCTRL, 0);
	FUNC7(sc, TZIC_INTCNTL, INTCNTL_NSEN_MASK|INTCNTL_NSEN|INTCNTL_EN);

	/* Register as a root pic. */
	if (FUNC6(sc) != 0) {
		FUNC5(dev, "could not attach PIC\n");
		return (ENXIO);
	}

	return (0);
}