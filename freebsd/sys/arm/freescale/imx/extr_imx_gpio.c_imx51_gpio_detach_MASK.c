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
struct imx51_gpio_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_res; scalar_t__* gpio_ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FIRST_IRQRES ; 
 int NUM_IRQRES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct imx51_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx_gpio_spec ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	int irq;
	struct imx51_gpio_softc *sc;

	sc = FUNC2(dev);

	FUNC3(dev);
	for (irq = 0; irq < NUM_IRQRES; irq++) {
		if (sc->gpio_ih[irq])
			FUNC1(dev, sc->sc_res[irq + FIRST_IRQRES],
			    sc->gpio_ih[irq]);
	}
	FUNC0(dev, imx_gpio_spec, sc->sc_res);
	FUNC4(&sc->sc_mtx);

	return(0);
}