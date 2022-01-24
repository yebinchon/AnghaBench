#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bcm_intc_softc {int /*<<< orphan*/  sc_dev; TYPE_2__* intc_isrcs; } ;
struct TYPE_4__ {int /*<<< orphan*/  bii_isrc; } ;
struct TYPE_3__ {int /*<<< orphan*/  td_intr_frame; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bcm_intc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_intc_softc*,TYPE_2__*) ; 
 scalar_t__ bootverbose ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void *arg)
{
	int irq, num;
	struct bcm_intc_softc *sc = arg;

	for (num = 0; ; num++) {
		irq = FUNC1(sc);
		if (irq == -1)
			break;
		if (FUNC4(&sc->intc_isrcs[irq].bii_isrc,
		    curthread->td_intr_frame) != 0) {
			FUNC2(sc, &sc->intc_isrcs[irq]);
			FUNC3(sc->sc_dev, "Stray irq %u disabled\n",
			    irq);
		}
		FUNC0(0); /* XXX */
	}
	if (num == 0 && bootverbose)
		FUNC3(sc->sc_dev, "Spurious interrupt detected\n");

	return (FILTER_HANDLED);
}