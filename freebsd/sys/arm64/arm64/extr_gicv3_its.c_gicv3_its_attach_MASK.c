#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct gicv3_its_softc {int sc_irq_length; int sc_irq_base; TYPE_1__* sc_irqs; int /*<<< orphan*/  sc_irq_alloc; int /*<<< orphan*/  sc_its_dev_list; int /*<<< orphan*/ ** sc_its_cols; int /*<<< orphan*/  sc_cpus; int /*<<< orphan*/  sc_its_cmd_lock; int /*<<< orphan*/  sc_its_dev_lock; int /*<<< orphan*/ * sc_its_res; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {int iidr_mask; int iidr; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  desc; } ;
struct TYPE_4__ {int gi_irq; int /*<<< orphan*/  gi_isrc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int ENXIO ; 
 int GIC_FIRST_LPI ; 
 int /*<<< orphan*/  GITS_CTLR ; 
 int GITS_CTLR_EN ; 
 int /*<<< orphan*/  GITS_IIDR ; 
 int MAXMEMDOM ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int M_FIRSTFIT ; 
 int /*<<< orphan*/  M_GICV3_ITS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  all_cpus ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * cpuset_domain ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 struct gicv3_its_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC10 (struct gicv3_its_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gicv3_its_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct gicv3_its_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct gicv3_its_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct gicv3_its_softc*) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct gicv3_its_softc*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct gicv3_its_softc*) ; 
 TYPE_2__* its_quirks ; 
 void* FUNC19 (int,int /*<<< orphan*/ ,int) ; 
 int mp_maxid ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int
FUNC24(device_t dev)
{
	struct gicv3_its_softc *sc;
	const char *name;
	uint32_t iidr;
	int domain, err, i, rid;

	sc = FUNC7(dev);

	sc->sc_irq_length = FUNC12(dev);
	sc->sc_irq_base = GIC_FIRST_LPI;
	sc->sc_irq_base += FUNC8(dev) * sc->sc_irq_length;

	rid = 0;
	sc->sc_its_res = FUNC4(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->sc_its_res == NULL) {
		FUNC9(dev, "Could not allocate memory\n");
		return (ENXIO);
	}

	iidr = FUNC10(sc, GITS_IIDR);
	for (i = 0; i < FUNC21(its_quirks); i++) {
		if ((iidr & its_quirks[i].iidr_mask) == its_quirks[i].iidr) {
			if (bootverbose) {
				FUNC9(dev, "Applying %s\n",
				    its_quirks[i].desc);
			}
			its_quirks[i].func(dev);
			break;
		}
	}

	/* Allocate the private tables */
	err = FUNC16(dev, sc);
	if (err != 0)
		return (err);

	/* Protects access to the device list */
	FUNC20(&sc->sc_its_dev_lock, "ITS device lock", NULL, MTX_SPIN);

	/* Protects access to the ITS command circular buffer. */
	FUNC20(&sc->sc_its_cmd_lock, "ITS cmd lock", NULL, MTX_SPIN);

	FUNC2(&sc->sc_cpus);
	if (FUNC5(dev, &domain) == 0) {
		if (domain < MAXMEMDOM)
			FUNC0(&cpuset_domain[domain], &sc->sc_cpus);
	} else {
		FUNC0(&all_cpus, &sc->sc_cpus);
	}

	/* Allocate the command circular buffer */
	FUNC13(sc);

	/* Allocate the per-CPU collections */
	for (int cpu = 0; cpu <= mp_maxid; cpu++)
		if (FUNC1(cpu, &sc->sc_cpus) != 0)
			sc->sc_its_cols[cpu] = FUNC19(
			    sizeof(*sc->sc_its_cols[0]), M_GICV3_ITS,
			    M_WAITOK | M_ZERO);
		else
			sc->sc_its_cols[cpu] = NULL;

	/* Enable the ITS */
	FUNC11(sc, GITS_CTLR,
	    FUNC10(sc, GITS_CTLR) | GITS_CTLR_EN);

	/* Create the LPI configuration table */
	FUNC14(sc);

	/* And the pending tebles */
	FUNC15(sc);

	/* Enable LPIs on this CPU */
	FUNC18(dev, sc);

	FUNC3(&sc->sc_its_dev_list);

	/*
	 * Create the vmem object to allocate INTRNG IRQs from. We try to
	 * use all IRQs not already used by the GICv3.
	 * XXX: This assumes there are no other interrupt controllers in the
	 * system.
	 */
	sc->sc_irq_alloc = FUNC23("GICv3 ITS IRQs", 0,
	    FUNC12(dev), 1, 1, M_FIRSTFIT | M_WAITOK);

	sc->sc_irqs = FUNC19(sizeof(*sc->sc_irqs) * sc->sc_irq_length,
	    M_GICV3_ITS, M_WAITOK | M_ZERO);
	name = FUNC6(dev);
	for (i = 0; i < sc->sc_irq_length; i++) {
		sc->sc_irqs[i].gi_irq = i;
		err = FUNC17(&sc->sc_irqs[i].gi_isrc, dev, 0,
		    "%s,%u", name, i);
	}

	return (0);
}