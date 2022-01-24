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
typedef  size_t uintmax_t ;
typedef  size_t uint64_t ;
struct trapframe {int dummy; } ;
struct intr_pic {int dummy; } ;
struct gic_v3_softc {size_t gic_nirqs; int /*<<< orphan*/  dev; struct gic_v3_irqsrc* gic_irqs; struct intr_pic* gic_pic; } ;
struct gic_v3_irqsrc {size_t gi_irq; scalar_t__ gi_trig; int /*<<< orphan*/  gi_isrc; } ;
struct TYPE_2__ {struct trapframe* td_intr_frame; } ;

/* Variables and functions */
 scalar_t__ CPU_MATCH_ERRATA_CAVIUM_THUNDERX_1_1 ; 
 int /*<<< orphan*/  EOIR1 ; 
 int FILTER_HANDLED ; 
 size_t GIC_FIRST_LPI ; 
 size_t GIC_FIRST_PPI ; 
 size_t GIC_FIRST_SGI ; 
 size_t GIC_LAST_SGI ; 
 size_t GIC_LAST_SPI ; 
 int /*<<< orphan*/  IAR1 ; 
 scalar_t__ INTR_TRIGGER_EDGE ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct intr_pic*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct trapframe*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct trapframe*) ; 
 int /*<<< orphan*/ * sgi_to_ipi ; 

int
FUNC8(void *arg)
{
	struct gic_v3_softc *sc = arg;
	struct gic_v3_irqsrc *gi;
	struct intr_pic *pic;
	uint64_t active_irq;
	struct trapframe *tf;

	pic = sc->gic_pic;

	while (1) {
		if (CPU_MATCH_ERRATA_CAVIUM_THUNDERX_1_1) {
			/*
			 * Hardware:		Cavium ThunderX
			 * Chip revision:	Pass 1.0 (early version)
			 *			Pass 1.1 (production)
			 * ERRATUM:		22978, 23154
			 */
			__asm __volatile(
			    "nop;nop;nop;nop;nop;nop;nop;nop;	\n"
			    "mrs %0, ICC_IAR1_EL1		\n"
			    "nop;nop;nop;nop;			\n"
			    "dsb sy				\n"
			    : "=&r" (active_irq));
		} else {
			active_irq = FUNC2(IAR1);
		}

		if (active_irq >= GIC_FIRST_LPI) {
			FUNC5(pic, active_irq);
			continue;
		}

		if (FUNC0(active_irq >= sc->gic_nirqs))
			return (FILTER_HANDLED);

		tf = curthread->td_intr_frame;
		gi = &sc->gic_irqs[active_irq];
		if (active_irq <= GIC_LAST_SGI) {
			/* Call EOI for all IPI before dispatch. */
			FUNC3(EOIR1, (uint64_t)active_irq);
#ifdef SMP
			intr_ipi_dispatch(sgi_to_ipi[gi->gi_irq], tf);
#else
			FUNC1(sc->dev, "SGI %ju on UP system detected\n",
			    (uintmax_t)(active_irq - GIC_FIRST_SGI));
#endif
		} else if (active_irq >= GIC_FIRST_PPI &&
		    active_irq <= GIC_LAST_SPI) {
			if (gi->gi_trig == INTR_TRIGGER_EDGE)
				FUNC3(EOIR1, gi->gi_irq);

			if (FUNC7(&gi->gi_isrc, tf) != 0) {
				if (gi->gi_trig != INTR_TRIGGER_EDGE)
					FUNC3(EOIR1, gi->gi_irq);
				FUNC4(sc->dev, &gi->gi_isrc);
				FUNC1(sc->dev,
				    "Stray irq %lu disabled\n", active_irq);
			}
		}
	}
}