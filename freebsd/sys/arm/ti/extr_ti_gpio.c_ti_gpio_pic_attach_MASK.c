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
struct ti_gpio_softc {int sc_maxpin; int /*<<< orphan*/  sc_dev; TYPE_1__* sc_isrcs; } ;
struct TYPE_2__ {size_t tgi_irq; int /*<<< orphan*/  tgi_isrc; int /*<<< orphan*/  tgi_mode; int /*<<< orphan*/  tgi_mask; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GPIO_INTR_CONFORM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct ti_gpio_softc *sc)
{
	int error;
	uint32_t irq;
	const char *name;

	sc->sc_isrcs = FUNC5(sizeof(*sc->sc_isrcs) * sc->sc_maxpin, M_DEVBUF,
	    M_WAITOK | M_ZERO);

	name = FUNC2(sc->sc_dev);
	for (irq = 0; irq < sc->sc_maxpin; irq++) {
		sc->sc_isrcs[irq].tgi_irq = irq;
		sc->sc_isrcs[irq].tgi_mask = FUNC1(irq);
		sc->sc_isrcs[irq].tgi_mode = GPIO_INTR_CONFORM;

		error = FUNC3(&sc->sc_isrcs[irq].tgi_isrc,
		    sc->sc_dev, 0, "%s,%u", name, irq);
		if (error != 0)
			return (error); /* XXX deregister ISRCs */
	}
	if (FUNC4(sc->sc_dev,
	    FUNC0(FUNC6(sc->sc_dev))) == NULL)
		return (ENXIO);

	return (0);
}