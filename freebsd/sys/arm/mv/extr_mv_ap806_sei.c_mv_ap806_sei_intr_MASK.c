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
typedef  int uint64_t ;
typedef  size_t u_int ;
struct trapframe {int dummy; } ;
struct mv_ap806_sei_softc {int /*<<< orphan*/  dev; struct mv_ap806_sei_irqsrc* isrcs; } ;
struct mv_ap806_sei_irqsrc {int /*<<< orphan*/  isrc; } ;
struct TYPE_2__ {struct trapframe* td_intr_frame; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  GICP_SECR0 ; 
 int /*<<< orphan*/  GICP_SECR1 ; 
 int FUNC0 (struct mv_ap806_sei_softc*,int /*<<< orphan*/ ) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 size_t FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct trapframe*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv_ap806_sei_softc*,struct mv_ap806_sei_irqsrc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mv_ap806_sei_softc*,struct mv_ap806_sei_irqsrc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(void *arg)
{
	struct mv_ap806_sei_softc *sc;
	struct mv_ap806_sei_irqsrc *sirq;
	struct trapframe *tf;
	uint64_t cause;
	u_int irq;

	sc = (struct mv_ap806_sei_softc *)arg;
	tf = curthread->td_intr_frame;
	while (1) {
		cause = FUNC0(sc, GICP_SECR1);
		cause <<= 32;
		cause |= FUNC0(sc, GICP_SECR0);

		irq = FUNC2(cause);
		if (irq == 0) break;
		irq--;
		sirq = &sc->isrcs[irq];
		if (FUNC3(&sirq->isrc, tf) != 0) {
			FUNC5(sc, sirq, 0);
			FUNC4(sc, sirq);
			FUNC1(sc->dev,
			    "Stray irq %u disabled\n", irq);
		}
	}

	return (FILTER_HANDLED);
}