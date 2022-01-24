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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct mv_mpic_softc {int /*<<< orphan*/  sc_dev; TYPE_1__* mpic_isrcs; } ;
struct TYPE_4__ {int /*<<< orphan*/  td_intr_frame; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmi_isrc; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int FUNC0 (struct mv_mpic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPIC_PPI_CAUSE ; 
 int FUNC3 (struct mv_mpic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 

__attribute__((used)) static int
FUNC8(void *arg)
{
	struct mv_mpic_softc *sc;
	uint32_t cause, irqsrc;
	unsigned int irq;
	u_int cpuid;

	sc = arg;
	cpuid = FUNC4(cpuid);
	irq = 0;

	for (cause = FUNC0(sc, MPIC_PPI_CAUSE); cause > 0;
	    cause >>= 1, irq++) {
		if (cause & 1) {
			irqsrc = FUNC3(sc, FUNC1(irq));
			if ((irqsrc & FUNC2(cpuid)) == 0)
				continue;
			if (FUNC6(&sc->mpic_isrcs[irq].mmi_isrc,
			    curthread->td_intr_frame) != 0) {
				FUNC7(irq);
				FUNC5(sc->sc_dev, "Stray irq %u "
				    "disabled\n", irq);
			}
		}
	}

	return (FILTER_HANDLED);
}