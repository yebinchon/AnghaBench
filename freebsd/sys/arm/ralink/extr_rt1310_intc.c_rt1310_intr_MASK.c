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
struct rt1310_intc_softc {int /*<<< orphan*/  dev; TYPE_1__* ri_isrcs; } ;
struct TYPE_4__ {int /*<<< orphan*/  td_intr_frame; } ;
struct TYPE_3__ {int /*<<< orphan*/  ri_isrc; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  RT_INTC_ICCR ; 
 int /*<<< orphan*/  RT_INTC_IPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt1310_intc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt1310_intc_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(void *arg)
{
	uint32_t irq;
	struct rt1310_intc_softc *sc = arg;

	irq = FUNC2(FUNC3(sc, RT_INTC_IPR)) - 1;

	if (FUNC5(&sc->ri_isrcs[irq].ri_isrc,
	    curthread->td_intr_frame) != 0) {
	      	FUNC4(sc, RT_INTC_ICCR, 1 << irq);
		FUNC1(sc->dev, "Stray irq %u disabled\n", irq);
	}

	FUNC0(0);

	return (FILTER_HANDLED);
}