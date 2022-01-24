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
struct ti_adc_softc {scalar_t__ sc_mem_res; scalar_t__ sc_irq_res; scalar_t__ sc_intrhand; int /*<<< orphan*/  sc_evdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct ti_adc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_adc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_adc_softc*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct ti_adc_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ti_adc_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ti_adc_softc*) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct ti_adc_softc *sc;

	sc = FUNC6(dev);

	/* Turn off the ADC. */
	FUNC0(sc);
	FUNC8(sc);
	FUNC9(sc);

#ifdef EVDEV_SUPPORT
	evdev_free(sc->sc_evdev);
#endif

	FUNC2(sc);

	FUNC1(sc);

	if (sc->sc_intrhand)
		FUNC5(dev, sc->sc_irq_res, sc->sc_intrhand);
	if (sc->sc_irq_res)
		FUNC4(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
	if (sc->sc_mem_res)
		FUNC4(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);

	return (FUNC3(dev));
}