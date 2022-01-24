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
typedef  size_t uint32_t ;
struct bcm_intc_softc {int /*<<< orphan*/  sc_dev; struct bcm_intc_irqsrc* intc_isrcs; } ;
struct bcm_intc_irqsrc {size_t bii_irq; int bii_mask; int /*<<< orphan*/  bii_isrc; int /*<<< orphan*/  bii_enable_reg; int /*<<< orphan*/  bii_disable_reg; } ;

/* Variables and functions */
 size_t BCM_INTC_NIRQS ; 
 int ENXIO ; 
 int /*<<< orphan*/  INTC_DISABLE_BANK1 ; 
 int /*<<< orphan*/  INTC_DISABLE_BANK2 ; 
 int /*<<< orphan*/  INTC_DISABLE_BASIC ; 
 int /*<<< orphan*/  INTC_ENABLE_BANK1 ; 
 int /*<<< orphan*/  INTC_ENABLE_BANK2 ; 
 int /*<<< orphan*/  INTC_ENABLE_BASIC ; 
 int FUNC0 (size_t) ; 
 int FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (size_t) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,intptr_t) ; 

__attribute__((used)) static int
FUNC8(struct bcm_intc_softc *sc, intptr_t xref)
{
	struct bcm_intc_irqsrc *bii;
	int error;
	uint32_t irq;
	const char *name;

	name = FUNC5(sc->sc_dev);
	for (irq = 0; irq < BCM_INTC_NIRQS; irq++) {
		bii = &sc->intc_isrcs[irq];
		bii->bii_irq = irq;
		if (FUNC4(irq)) {
			bii->bii_disable_reg = INTC_DISABLE_BASIC;
			bii->bii_enable_reg = INTC_ENABLE_BASIC;
			bii->bii_mask = 1 << irq;
		} else if (FUNC2(irq)) {
			bii->bii_disable_reg = INTC_DISABLE_BANK1;
			bii->bii_enable_reg = INTC_ENABLE_BANK1;
			bii->bii_mask = 1 << FUNC0(irq);
		} else if (FUNC3(irq)) {
			bii->bii_disable_reg = INTC_DISABLE_BANK2;
			bii->bii_enable_reg = INTC_ENABLE_BANK2;
			bii->bii_mask = 1 << FUNC1(irq);
		} else
			return (ENXIO);

		error = FUNC6(&bii->bii_isrc, sc->sc_dev, 0,
		    "%s,%u", name, irq);
		if (error != 0)
			return (error);
	}
	if (FUNC7(sc->sc_dev, xref) == NULL)
		return (ENXIO);

	return (0);
}