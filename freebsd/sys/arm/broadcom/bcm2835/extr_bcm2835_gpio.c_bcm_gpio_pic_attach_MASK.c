#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct bcm_gpio_softc {int /*<<< orphan*/  sc_dev; TYPE_1__* sc_isrcs; } ;
struct TYPE_2__ {size_t bgi_irq; int /*<<< orphan*/  bgi_isrc; int /*<<< orphan*/  bgi_mode; int /*<<< orphan*/  bgi_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t BCM_GPIO_PINS ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIO_INTR_CONFORM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct bcm_gpio_softc *sc)
{
	int error;
	uint32_t irq;
	const char *name;

	name = FUNC2(sc->sc_dev);
	for (irq = 0; irq < BCM_GPIO_PINS; irq++) {
		sc->sc_isrcs[irq].bgi_irq = irq;
		sc->sc_isrcs[irq].bgi_mask = FUNC0(irq);
		sc->sc_isrcs[irq].bgi_mode = GPIO_INTR_CONFORM;

		error = FUNC3(&sc->sc_isrcs[irq].bgi_isrc,
		    sc->sc_dev, 0, "%s,%u", name, irq);
		if (error != 0)
			return (error); /* XXX deregister ISRCs */
	}
	if (FUNC4(sc->sc_dev,
	    FUNC1(FUNC5(sc->sc_dev))) == NULL)
		return (ENXIO);

	return (0);
}