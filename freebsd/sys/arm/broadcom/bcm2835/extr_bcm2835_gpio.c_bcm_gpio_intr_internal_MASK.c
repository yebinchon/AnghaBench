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
typedef  int u_int ;
struct bcm_gpio_softc {int /*<<< orphan*/  sc_dev; struct bcm_gpio_irqsrc* sc_isrcs; } ;
struct bcm_gpio_irqsrc {int bgi_mask; int /*<<< orphan*/  bgi_isrc; } ;
struct TYPE_2__ {int /*<<< orphan*/  td_intr_frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BCM_GPIO_PINS_PER_BANK ; 
 int FUNC1 (struct bcm_gpio_softc*,int /*<<< orphan*/ ) ; 
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_gpio_softc*,struct bcm_gpio_irqsrc*) ; 
 scalar_t__ FUNC3 (struct bcm_gpio_irqsrc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_gpio_softc*,struct bcm_gpio_irqsrc*) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct bcm_gpio_softc *sc, uint32_t bank)
{
	u_int irq;
	struct bcm_gpio_irqsrc *bgi;
	uint32_t reg;

	/* Do not care of spurious interrupt on GPIO. */
	reg = FUNC1(sc, FUNC0(bank));
	while (reg != 0) {
		irq = BCM_GPIO_PINS_PER_BANK * bank + FUNC6(reg) - 1;
		bgi = sc->sc_isrcs + irq;
		if (!FUNC3(bgi))
			FUNC2(sc, bgi);
		if (FUNC7(&bgi->bgi_isrc,
		    curthread->td_intr_frame) != 0) {
			FUNC4(sc, bgi);
			if (FUNC3(bgi))
				FUNC2(sc, bgi);
			FUNC5(sc->sc_dev, "Stray irq %u disabled\n",
			    irq);
		}
		reg &= ~bgi->bgi_mask;
	}
	return (FILTER_HANDLED);
}