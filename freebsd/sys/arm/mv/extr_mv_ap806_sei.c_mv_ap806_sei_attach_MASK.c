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
struct mv_ap806_sei_softc {int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * irq_ih; int /*<<< orphan*/  dev; TYPE_1__* isrcs; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int irq; int /*<<< orphan*/  isrc; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GICP_SEMR0 ; 
 int /*<<< orphan*/  GICP_SEMR1 ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  FUNC0 (struct mv_ap806_sei_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_ap806_sei_softc*) ; 
 int MV_AP806_SEI_MAX_NIRQS ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC4 (struct mv_ap806_sei_softc*,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mv_ap806_sei_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 struct mv_ap806_sei_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mv_ap806_sei_intr ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct mv_ap806_sei_softc *sc;
	phandle_t xref, node;
	uint32_t irq;
	const char *name;
	int rv, rid;

	sc = FUNC10(dev);
	sc->dev = dev;
	node = FUNC15(dev);
	FUNC1(sc);

	/* Allocate resources. */
	rid = 0;
	sc->mem_res = FUNC5(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC11(dev, "Cannot allocate memory resources\n");
		rv = ENXIO;
		goto fail;
	}

	rid = 0;
	sc->irq_res = FUNC5(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
	if (sc->irq_res == NULL) {
		FUNC11(dev, "Cannot allocate IRQ resources\n");
		rv = ENXIO;
		goto fail;
	}

	/* Mask all interrupts) */
	FUNC4(sc, GICP_SEMR0, 0xFFFFFFFF);
	FUNC4(sc, GICP_SEMR1, 0xFFFFFFFF);

	/* Create all interrupt sources */
	sc->isrcs = FUNC14(sizeof(*sc->isrcs) * MV_AP806_SEI_MAX_NIRQS,
	    M_DEVBUF, M_WAITOK | M_ZERO);
	name = FUNC9(sc->dev);
	for (irq = 0; irq < MV_AP806_SEI_MAX_NIRQS; irq++) {
		sc->isrcs[irq].irq = irq;
		rv = FUNC12(&sc->isrcs[irq].isrc,
		    sc->dev, 0, "%s,%u", name, irq);
		if (rv != 0)
			goto fail; /* XXX deregister ISRCs */
	}
	xref = FUNC3(node);;
	if (FUNC13(dev, xref) == NULL) {
		FUNC11(dev, "Cannot register SEI\n");
		rv = ENXIO;
		goto fail;
	}
	if (FUNC7(dev, sc->irq_res,INTR_TYPE_MISC | INTR_MPSAFE,
	    mv_ap806_sei_intr, NULL, sc, &sc->irq_ih)) {
		FUNC11(dev,
		    "Unable to register interrupt handler\n");
		rv = ENXIO;
		goto fail;
	}
	
	FUNC2(xref, dev);
	return (0);

fail:
	if (sc->irq_ih != NULL)
		FUNC8(dev, sc->irq_res, sc->irq_ih);
	if (sc->irq_res != NULL)
		FUNC6(dev, SYS_RES_IRQ, 0, sc->irq_res);
	if (sc->mem_res != NULL)
		FUNC6(dev, SYS_RES_MEMORY, 0, sc->mem_res);
	FUNC0(sc);
	return (ENXIO);
}