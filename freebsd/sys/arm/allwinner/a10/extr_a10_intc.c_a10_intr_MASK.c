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
typedef  int u_int ;
struct a10_aintc_softc {int /*<<< orphan*/  sc_dev; TYPE_1__* isrcs; } ;
struct TYPE_4__ {int /*<<< orphan*/  td_intr_frame; } ;
struct TYPE_3__ {int /*<<< orphan*/  isrc; } ;

/* Variables and functions */
 int A10_INTR_MAX_NIRQS ; 
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct a10_aintc_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct a10_aintc_softc*,int) ; 
 int FUNC2 (struct a10_aintc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(void *arg)
{
	struct a10_aintc_softc *sc = arg;
	u_int irq;

	irq = FUNC2(sc);
	if (irq == -1 || irq > A10_INTR_MAX_NIRQS) {
		FUNC4(sc->sc_dev, "Spurious interrupt %d\n", irq);
		return (FILTER_HANDLED);
	}

	while (irq != -1) {
		if (irq > A10_INTR_MAX_NIRQS) {
			FUNC4(sc->sc_dev, "Spurious interrupt %d\n",
			    irq);
			return (FILTER_HANDLED);
		}
		if (FUNC5(&sc->isrcs[irq].isrc,
		    curthread->td_intr_frame) != 0) {
			FUNC1(sc, irq);
			FUNC0(sc, irq);
			FUNC4(sc->sc_dev,
			    "Stray interrupt %d disabled\n", irq);
		}

		FUNC3(irq);
		irq = FUNC2(sc);
	}

	return (FILTER_HANDLED);
}