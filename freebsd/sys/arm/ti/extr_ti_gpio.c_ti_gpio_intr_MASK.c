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
typedef  int uint32_t ;
typedef  size_t u_int ;
struct trapframe {int dummy; } ;
struct ti_gpio_softc {size_t sc_maxpin; int /*<<< orphan*/  sc_dev; struct ti_gpio_irqsrc* sc_isrcs; } ;
struct ti_gpio_irqsrc {int tgi_mask; int /*<<< orphan*/  tgi_isrc; } ;
struct TYPE_2__ {struct trapframe* td_intr_frame; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct trapframe*) ; 
 int FUNC2 (struct ti_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_gpio_softc*,struct ti_gpio_irqsrc*) ; 
 scalar_t__ FUNC4 (struct ti_gpio_irqsrc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_gpio_softc*,struct ti_gpio_irqsrc*) ; 

__attribute__((used)) static int
FUNC6(void *arg)
{
	u_int irq;
	uint32_t reg;
	struct ti_gpio_softc *sc;
	struct trapframe *tf;
	struct ti_gpio_irqsrc *tgi;

	sc = (struct ti_gpio_softc *)arg;
	tf = curthread->td_intr_frame;

	reg = FUNC2(sc);
	for (irq = 0; irq < sc->sc_maxpin; irq++) {
		tgi = &sc->sc_isrcs[irq];
		if ((reg & tgi->tgi_mask) == 0)
			continue;
		if (!FUNC4(tgi))
			FUNC3(sc, tgi);
		if (FUNC1(&tgi->tgi_isrc, tf) != 0) {
			FUNC5(sc, tgi);
			if (FUNC4(tgi))
				FUNC3(sc, tgi);
			FUNC0(sc->sc_dev, "Stray irq %u disabled\n",
			    irq);
		}
	}
	return (FILTER_HANDLED);
}