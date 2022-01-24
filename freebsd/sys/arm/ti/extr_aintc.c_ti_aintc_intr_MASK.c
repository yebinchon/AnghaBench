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
typedef  size_t uint32_t ;
struct ti_aintc_softc {int /*<<< orphan*/  sc_dev; TYPE_1__* aintc_isrcs; } ;
struct TYPE_4__ {int /*<<< orphan*/  td_intr_frame; } ;
struct TYPE_3__ {int /*<<< orphan*/  tai_isrc; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 size_t INTC_SIR_ACTIVE_MASK ; 
 int /*<<< orphan*/  INTC_SIR_IRQ ; 
 size_t INTC_SIR_SPURIOUS_MASK ; 
 size_t FUNC0 (struct ti_aintc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ti_aintc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_aintc_softc*,size_t) ; 

__attribute__((used)) static int
FUNC6(void *arg)
{
	uint32_t irq;
	struct ti_aintc_softc *sc = arg;

	/* Get active interrupt */
	irq = FUNC0(sc, INTC_SIR_IRQ);
	if ((irq & INTC_SIR_SPURIOUS_MASK) != 0) {
		FUNC2(sc->sc_dev,
		    "Spurious interrupt detected (0x%08x)\n", irq);
		FUNC4(sc);
		return (FILTER_HANDLED);
	}

	/* Only level-sensitive interrupts detection is supported. */
	irq &= INTC_SIR_ACTIVE_MASK;
	if (FUNC3(&sc->aintc_isrcs[irq].tai_isrc,
	    curthread->td_intr_frame) != 0) {
		FUNC5(sc, irq);
		FUNC4(sc);
		FUNC2(sc->sc_dev, "Stray irq %u disabled\n", irq);
	}

	FUNC1(irq); /* XXX */
	return (FILTER_HANDLED);
}