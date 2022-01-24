#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct ti_pruss_softc {struct ti_pruss_irqsc* sc_irq_devs; } ;
struct TYPE_6__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_4__ {size_t idx; int /*<<< orphan*/  cnt; } ;
struct TYPE_5__ {TYPE_1__ ctl; scalar_t__* ts; } ;
struct ti_pruss_irqsc {int channel; int event; TYPE_3__ sc_selinfo; TYPE_2__ tstamps; } ;
struct ti_pruss_irq_arg {int irq; struct ti_pruss_softc* sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  PRUSS_INTC_HIDISR ; 
 int /*<<< orphan*/  PRUSS_INTC_HIEISR ; 
 int /*<<< orphan*/  PRUSS_INTC_HIER ; 
 int /*<<< orphan*/  PRUSS_INTC_SICR ; 
 int TI_PRUSS_PRU_IRQS ; 
 size_t TI_TS_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (struct ti_pruss_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_pruss_softc*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_pruss_irqsc*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	int val;
	struct ti_pruss_irq_arg *iap = arg;
	struct ti_pruss_softc *sc = iap->sc;
	/*
	 * Interrupts pr1_host_intr[0:7] are mapped to
	 * Host-2 to Host-9 of PRU-ICSS IRQ-controller.
	 */
	const int pru_int = iap->irq + TI_PRUSS_PRU_IRQS;
	const int pru_int_mask = (1 << pru_int);
	const int pru_channel = sc->sc_irq_devs[pru_int].channel;
	const int pru_event = sc->sc_irq_devs[pru_channel].event;

	val = FUNC4(sc, PRUSS_INTC_HIER);
	if (!(val & pru_int_mask))
		return;

	FUNC5(sc, PRUSS_INTC_HIDISR, pru_int);
	FUNC5(sc, PRUSS_INTC_SICR, pru_event);
	FUNC5(sc, PRUSS_INTC_HIEISR, pru_int);

	struct ti_pruss_irqsc* irq = &sc->sc_irq_devs[pru_channel];
	size_t wr = irq->tstamps.ctl.idx;

	struct timespec ts;
	FUNC2(&ts);
	irq->tstamps.ts[wr] = ts.tv_sec * 1000000000 + ts.tv_nsec;

	if (++wr == TI_TS_ARRAY)
		wr = 0;
	FUNC1(&irq->tstamps.ctl.cnt, 1);

	irq->tstamps.ctl.idx = wr;

	FUNC0(&irq->sc_selinfo.si_note, pru_int);
	FUNC6(irq);
	FUNC3(&irq->sc_selinfo);
}