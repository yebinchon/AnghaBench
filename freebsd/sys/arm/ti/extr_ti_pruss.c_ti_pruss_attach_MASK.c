#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ti_pruss_softc {int sc_glob_irqen; TYPE_6__* sc_pdev; TYPE_4__* sc_irq_devs; int /*<<< orphan*/ * sc_intr; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_bh; int /*<<< orphan*/  sc_bt; int /*<<< orphan*/  sc_mtx; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_13__ {int /*<<< orphan*/  si_drv1; } ;
struct TYPE_12__ {int irq; struct ti_pruss_softc* sc; } ;
struct TYPE_10__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_8__ {scalar_t__ idx; } ;
struct TYPE_9__ {TYPE_1__ ctl; } ;
struct TYPE_11__ {int event; int channel; int /*<<< orphan*/  sc_mtx; TYPE_3__ sc_selinfo; TYPE_2__ tstamps; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_STRING ; 
 int CTLTYPE_U8 ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  PRUSS_AM33XX_INTC ; 
 scalar_t__ PRUSS_AM33XX_REV ; 
 int /*<<< orphan*/  PRUSS_CLK ; 
 int /*<<< orphan*/  PRUSS_INTC_SIPR0 ; 
 int /*<<< orphan*/  PRUSS_INTC_SIPR1 ; 
 int /*<<< orphan*/  PRUSS_INTC_SITR0 ; 
 int /*<<< orphan*/  PRUSS_INTC_SITR1 ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct ti_pruss_softc*,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int TI_PRUSS_HOST_IRQS ; 
 int TI_PRUSS_IRQS ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *) ; 
 struct ti_pruss_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC7 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ti_pruss_cdevsw ; 
 int /*<<< orphan*/  ti_pruss_channel_map ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ti_pruss_event_map ; 
 int /*<<< orphan*/  ti_pruss_global_interrupt_enable ; 
 int /*<<< orphan*/  ti_pruss_interrupt_enable ; 
 int /*<<< orphan*/  FUNC19 (struct ti_pruss_softc*) ; 
 int /*<<< orphan*/  ti_pruss_intr ; 
 TYPE_5__* ti_pruss_irq_args ; 
 int /*<<< orphan*/  ti_pruss_irq_spec ; 
 scalar_t__ FUNC20 (struct ti_pruss_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct ti_pruss_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC22(device_t dev)
{
	struct ti_pruss_softc *sc;
	int rid, i;

	if (FUNC17(PRUSS_CLK) != 0) {
		FUNC10(dev, "could not enable PRUSS clock\n");
		return (ENXIO);
	}
	sc = FUNC6(dev);
	rid = 0;
	FUNC13(&sc->sc_mtx, "TI PRUSS", NULL, MTX_DEF);
	sc->sc_mem_res = FUNC3(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->sc_mem_res == NULL) {
		FUNC10(dev, "could not allocate memory resource\n");
		return (ENXIO);
	}

	struct sysctl_ctx_list *clist = FUNC7(dev);
	if (!clist)
		return (EINVAL);

	struct sysctl_oid *poid;
	poid = FUNC8( dev );
	if (!poid)
		return (EINVAL);

	sc->sc_glob_irqen = false;
	struct sysctl_oid *irq_root = FUNC0(clist, FUNC2(poid),
	    OID_AUTO, "irq", CTLFLAG_RD, 0,
	    "PRUSS Host Interrupts");
	FUNC1(clist, FUNC2(poid), OID_AUTO,
	    "global_interrupt_enable", CTLFLAG_RW | CTLTYPE_U8,
	    sc, 0, ti_pruss_global_interrupt_enable,
	    "CU", "Global interrupt enable");

	sc->sc_bt = FUNC15(sc->sc_mem_res);
	sc->sc_bh = FUNC14(sc->sc_mem_res);
	if (FUNC4(dev, ti_pruss_irq_spec, sc->sc_irq_res) != 0) {
		FUNC10(dev, "could not allocate interrupt resource\n");
		FUNC18(dev);
		return (ENXIO);
	}

	FUNC19(sc);

	for (i = 0; i < TI_PRUSS_IRQS; i++) {
		char name[8];
		FUNC16(name, sizeof(name), "%d", i);

		struct sysctl_oid *irq_nodes = FUNC0(clist, FUNC2(irq_root),
		    OID_AUTO, name, CTLFLAG_RD, 0,
		    "PRUSS Interrupts");
		FUNC1(clist, FUNC2(irq_nodes), OID_AUTO,
		    "channel", CTLFLAG_RW | CTLTYPE_STRING, sc, i, ti_pruss_channel_map,
		    "A", "Channel attached to this irq");
		FUNC1(clist, FUNC2(irq_nodes), OID_AUTO,
		    "event", CTLFLAG_RW | CTLTYPE_STRING, sc, i, ti_pruss_event_map,
		    "A", "Event attached to this irq");
		FUNC1(clist, FUNC2(irq_nodes), OID_AUTO,
		    "enable", CTLFLAG_RW | CTLTYPE_U8, sc, i, ti_pruss_interrupt_enable,
		    "CU", "Enable/Disable interrupt");

		sc->sc_irq_devs[i].event = -1;
		sc->sc_irq_devs[i].channel = -1;
		sc->sc_irq_devs[i].tstamps.ctl.idx = 0;

		if (i < TI_PRUSS_HOST_IRQS) {
			ti_pruss_irq_args[i].irq = i;
			ti_pruss_irq_args[i].sc = sc;
			if (FUNC5(dev, sc->sc_irq_res[i],
			    INTR_MPSAFE | INTR_TYPE_MISC,
			    NULL, ti_pruss_intr, &ti_pruss_irq_args[i],
			    &sc->sc_intr[i]) != 0) {
				FUNC10(dev,
				    "unable to setup the interrupt handler\n");
				FUNC18(dev);

				return (ENXIO);
			}
			FUNC13(&sc->sc_irq_devs[i].sc_mtx, "TI PRUSS IRQ", NULL, MTX_DEF);
			FUNC11(&sc->sc_irq_devs[i].sc_selinfo.si_note, &sc->sc_irq_devs[i].sc_mtx);
		}
	}

	if (FUNC20(sc, PRUSS_AM33XX_INTC) == PRUSS_AM33XX_REV)
		FUNC10(dev, "AM33xx PRU-ICSS\n");

	sc->sc_pdev = FUNC12(&ti_pruss_cdevsw, 0, UID_ROOT, GID_WHEEL,
	    0600, "pruss%d", FUNC9(dev));
	sc->sc_pdev->si_drv1 = dev;

	/*  Acc. to datasheet always write 1 to polarity registers */
	FUNC21(sc, PRUSS_INTC_SIPR0, 0xFFFFFFFF);
	FUNC21(sc, PRUSS_INTC_SIPR1, 0xFFFFFFFF);

	/* Acc. to datasheet always write 0 to event type registers */
	FUNC21(sc, PRUSS_INTC_SITR0, 0);
	FUNC21(sc, PRUSS_INTC_SITR1, 0);

	return (0);
}