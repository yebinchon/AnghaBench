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
struct ti_gpio_softc {int /*<<< orphan*/ * sc_busdev; int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_irq_hdl; void* sc_irq_res; scalar_t__ sc_irq_rid; scalar_t__ sc_mem_rid; int /*<<< orphan*/  sc_maxpin; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct ti_gpio_softc*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ti_gpio_softc*,int /*<<< orphan*/ *) ; 
 struct ti_gpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ti_gpio_intr ; 
 scalar_t__ FUNC8 (struct ti_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct ti_gpio_softc *sc;
	int err;

	sc = FUNC3(dev);
	sc->sc_dev = dev;
	FUNC0(sc);
	FUNC9(dev, &sc->sc_maxpin);
	sc->sc_maxpin++;

	sc->sc_mem_rid = 0;
	sc->sc_mem_res = FUNC1(dev, SYS_RES_MEMORY,
	    &sc->sc_mem_rid, RF_ACTIVE);
	if (!sc->sc_mem_res) {
		FUNC4(dev, "Error: could not allocate mem resources\n");
		FUNC7(dev);
		return (ENXIO);
	}

	sc->sc_irq_rid = 0;
	sc->sc_irq_res = FUNC1(dev, SYS_RES_IRQ,
	    &sc->sc_irq_rid, RF_ACTIVE);
	if (!sc->sc_irq_res) {
		FUNC4(dev, "Error: could not allocate irq resources\n");
		FUNC7(dev);
		return (ENXIO);
	}

	/*
	 * Register our interrupt filter for each of the IRQ resources.
	 */
	if (FUNC2(dev, sc->sc_irq_res,
	    INTR_TYPE_MISC | INTR_MPSAFE, ti_gpio_intr, NULL, sc,
	    &sc->sc_irq_hdl) != 0) {
		FUNC4(dev,
		    "WARNING: unable to register interrupt filter\n");
		FUNC7(dev);
		return (ENXIO);
	}

	if (FUNC8(sc) != 0) {
		FUNC4(dev, "WARNING: unable to attach PIC\n");
		FUNC7(dev);
		return (ENXIO);
	}

	/* We need to go through each block and ensure the clocks are running and
	 * the module is enabled.  It might be better to do this only when the
	 * pins are configured which would result in less power used if the GPIO
	 * pins weren't used ... 
	 */
	if (sc->sc_mem_res != NULL) {
		/* Initialize the GPIO module. */
		err = FUNC6(dev);
		if (err != 0) {
			FUNC7(dev);
			return (err);
		}
	}

	sc->sc_busdev = FUNC5(dev);
	if (sc->sc_busdev == NULL) {
		FUNC7(dev);
		return (ENXIO);
	}

	return (0);
}