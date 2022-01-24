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
struct ti_gpio_softc {int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_mem_rid; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_irq_rid; scalar_t__ sc_irq_hdl; int /*<<< orphan*/ * sc_isrcs; int /*<<< orphan*/ * sc_busdev; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (struct ti_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 struct ti_gpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ti_gpio_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ti_gpio_softc*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct ti_gpio_softc *sc = FUNC4(dev);

	FUNC0(FUNC6(&sc->sc_mtx), ("gpio mutex not initialized"));

	/* Disable all interrupts */
	if (sc->sc_mem_res != NULL)
		FUNC7(sc, 0xffffffff);
	if (sc->sc_busdev != NULL)
		FUNC5(dev);
	if (sc->sc_isrcs != NULL)
		FUNC8(sc);
	/* Release the memory and IRQ resources. */
	if (sc->sc_irq_hdl) {
		FUNC3(dev, sc->sc_irq_res,
		    sc->sc_irq_hdl);
	}
	if (sc->sc_irq_res)
		FUNC2(dev, SYS_RES_IRQ, sc->sc_irq_rid,
		    sc->sc_irq_res);
	if (sc->sc_mem_res)
		FUNC2(dev, SYS_RES_MEMORY, sc->sc_mem_rid,
		    sc->sc_mem_res);
	FUNC1(sc);

	return (0);
}