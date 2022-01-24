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
struct trapframe {int dummy; } ;
struct gic_irqsrc {size_t gi_irq; int gi_flags; int /*<<< orphan*/  gi_isrc; } ;
struct arm_gic_softc {int nirqs; int* last_irq; int /*<<< orphan*/  gic_dev; struct gic_irqsrc* gic_irqs; } ;
struct TYPE_2__ {struct trapframe* td_intr_frame; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  GICC_EOIR ; 
 int /*<<< orphan*/  GICC_IAR ; 
 int GIC_FIRST_SGI ; 
 int GIC_LAST_SGI ; 
 int GI_FLAG_EARLY_EOI ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cpuid ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC3 (struct arm_gic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct arm_gic_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ gic_debug_spurious ; 
 int /*<<< orphan*/  FUNC5 (struct arm_gic_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct trapframe*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct trapframe*) ; 
 int /*<<< orphan*/ * sgi_to_ipi ; 

int
FUNC8(void *arg)
{
	struct arm_gic_softc *sc = arg;
	struct gic_irqsrc *gi;
	uint32_t irq_active_reg, irq;
	struct trapframe *tf;

	irq_active_reg = FUNC3(sc, GICC_IAR);
	irq = irq_active_reg & 0x3FF;

	/*
	 * 1. We do EOI here because recent read value from active interrupt
	 *    register must be used for it. Another approach is to save this
	 *    value into associated interrupt source.
	 * 2. EOI must be done on same CPU where interrupt has fired. Thus
	 *    we must ensure that interrupted thread does not migrate to
	 *    another CPU.
	 * 3. EOI cannot be delayed by any preemption which could happen on
	 *    critical_exit() used in MI intr code, when interrupt thread is
	 *    scheduled. See next point.
	 * 4. IPI_RENDEZVOUS assumes that no preemption is permitted during
	 *    an action and any use of critical_exit() could break this
	 *    assumption. See comments within smp_rendezvous_action().
	 * 5. We always return FILTER_HANDLED as this is an interrupt
	 *    controller dispatch function. Otherwise, in cascaded interrupt
	 *    case, the whole interrupt subtree would be masked.
	 */

	if (irq >= sc->nirqs) {
		if (gic_debug_spurious)
			FUNC2(sc->gic_dev,
			    "Spurious interrupt detected: last irq: %d on CPU%d\n",
			    sc->last_irq[FUNC0(cpuid)], FUNC0(cpuid));
		return (FILTER_HANDLED);
	}

	tf = curthread->td_intr_frame;
dispatch_irq:
	gi = sc->gic_irqs + irq;
	/*
	 * Note that GIC_FIRST_SGI is zero and is not used in 'if' statement
	 * as compiler complains that comparing u_int >= 0 is always true.
	 */
	if (irq <= GIC_LAST_SGI) {
#ifdef SMP
		/* Call EOI for all IPI before dispatch. */
		gic_c_write_4(sc, GICC_EOIR, irq_active_reg);
		intr_ipi_dispatch(sgi_to_ipi[gi->gi_irq], tf);
		goto next_irq;
#else
		FUNC2(sc->gic_dev, "SGI %u on UP system detected\n",
		    irq - GIC_FIRST_SGI);
		FUNC4(sc, GICC_EOIR, irq_active_reg);
		goto next_irq;
#endif
	}

	if (gic_debug_spurious)
		sc->last_irq[FUNC0(cpuid)] = irq;
	if ((gi->gi_flags & GI_FLAG_EARLY_EOI) == GI_FLAG_EARLY_EOI)
		FUNC4(sc, GICC_EOIR, irq_active_reg);

	if (FUNC7(&gi->gi_isrc, tf) != 0) {
		FUNC5(sc, irq);
		if ((gi->gi_flags & GI_FLAG_EARLY_EOI) != GI_FLAG_EARLY_EOI)
			FUNC4(sc, GICC_EOIR, irq_active_reg);
		FUNC2(sc->gic_dev, "Stray irq %u disabled\n", irq);
	}

next_irq:
	FUNC1(irq);
	irq_active_reg = FUNC3(sc, GICC_IAR);
	irq = irq_active_reg & 0x3FF;
	if (irq < sc->nirqs)
		goto dispatch_irq;

	return (FILTER_HANDLED);
}