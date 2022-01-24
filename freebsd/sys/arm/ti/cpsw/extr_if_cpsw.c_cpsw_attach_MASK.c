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
typedef  int uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  hdp_offset; int /*<<< orphan*/  queue_slots; int /*<<< orphan*/  active; int /*<<< orphan*/  avail; int /*<<< orphan*/  lock; } ;
struct cpsw_softc {int active_slave; int dualemac; TYPE_1__* port; TYPE_3__ rx; TYPE_3__ tx; int /*<<< orphan*/  nullpad; int /*<<< orphan*/  mbuf_dtag; int /*<<< orphan*/  dev; int /*<<< orphan*/ * mem_res; scalar_t__ mem_rid; int /*<<< orphan*/  irq_res; int /*<<< orphan*/  node; int /*<<< orphan*/  attach_uptime; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {int vid; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int CPSW_PORTS ; 
 int /*<<< orphan*/  CPSW_SS_IDVER ; 
 int /*<<< orphan*/  CPSW_TXFRAGS ; 
 int CPSW_VLANS ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  ETHER_MIN_LEN ; 
 int /*<<< orphan*/  MCLBYTES ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct cpsw_softc*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct cpsw_softc*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct cpsw_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct cpsw_softc*) ; 
 int FUNC17 (struct cpsw_softc*) ; 
 int FUNC18 (struct cpsw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct cpsw_softc*) ; 
 TYPE_2__* cpsw_vgroups ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 struct cpsw_softc* FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  irq_res_spec ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC28(device_t dev)
{
	int error, i;
	struct cpsw_softc *sc;
	uint32_t reg;

	sc = FUNC22(dev);
	sc->dev = dev;
	sc->node = FUNC27(dev);
	FUNC24(&sc->attach_uptime);

	if (FUNC2(sc->node, "active_slave", &sc->active_slave,
	    sizeof(sc->active_slave)) <= 0) {
		sc->active_slave = 0;
	}
	if (sc->active_slave > 1)
		sc->active_slave = 1;

	if (FUNC3(sc->node, "dual_emac"))
		sc->dualemac = 1;

	for (i = 0; i < CPSW_PORTS; i++) {
		if (!sc->dualemac && i != sc->active_slave)
			continue;
		if (FUNC14(sc, i) != 0) {
			FUNC23(dev,
			    "failed to get PHY address from FDT\n");
			return (ENXIO);
		}
	}

	/* Initialize mutexes */
	FUNC26(&sc->tx.lock, FUNC21(dev),
	    "cpsw TX lock", MTX_DEF);
	FUNC26(&sc->rx.lock, FUNC21(dev),
	    "cpsw RX lock", MTX_DEF);

	/* Allocate IRQ resources */
	error = FUNC6(dev, irq_res_spec, sc->irq_res);
	if (error) {
		FUNC23(dev, "could not allocate IRQ resources\n");
		FUNC13(dev);
		return (ENXIO);
	}

	sc->mem_rid = 0;
	sc->mem_res = FUNC5(dev, SYS_RES_MEMORY, 
	    &sc->mem_rid, RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC23(sc->dev, "failed to allocate memory resource\n");
		FUNC13(dev);
		return (ENXIO);
	}

	reg = FUNC18(sc, CPSW_SS_IDVER);
	FUNC23(dev, "CPSW SS Version %d.%d (%d)\n", (reg >> 8 & 0x7),
		reg & 0xFF, (reg >> 11) & 0x1F);

	FUNC12(sc);

	/* Allocate a busdma tag and DMA safe memory for mbufs. */
	error = FUNC7(
		FUNC10(sc->dev),	/* parent */
		1, 0,				/* alignment, boundary */
		BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
		BUS_SPACE_MAXADDR,		/* highaddr */
		NULL, NULL,			/* filtfunc, filtfuncarg */
		MCLBYTES, CPSW_TXFRAGS,		/* maxsize, nsegments */
		MCLBYTES, 0,			/* maxsegsz, flags */
		NULL, NULL,			/* lockfunc, lockfuncarg */
		&sc->mbuf_dtag);		/* dmatag */
	if (error) {
		FUNC23(dev, "bus_dma_tag_create failed\n");
		FUNC13(dev);
		return (error);
	}

	/* Allocate a NULL buffer for padding. */
	sc->nullpad = FUNC25(ETHER_MIN_LEN, M_DEVBUF, M_WAITOK | M_ZERO);

	FUNC16(sc);

	/* Allocate slots to TX and RX queues. */
	FUNC4(&sc->rx.avail);
	FUNC4(&sc->rx.active);
	FUNC4(&sc->tx.avail);
	FUNC4(&sc->tx.active);
	// For now:  128 slots to TX, rest to RX.
	// XXX TODO: start with 32/64 and grow dynamically based on demand.
	if (FUNC11(sc, &sc->tx, 128) ||
	    FUNC11(sc, &sc->rx, -1)) {
		FUNC23(dev, "failed to allocate dmamaps\n");
		FUNC13(dev);
		return (ENOMEM);
	}
	FUNC23(dev, "Initial queue size TX=%d RX=%d\n",
	    sc->tx.queue_slots, sc->rx.queue_slots);

	sc->tx.hdp_offset = FUNC1(0);
	sc->rx.hdp_offset = FUNC0(0);

	if (FUNC17(sc) == -1) {
		FUNC23(dev, "failed to setup interrupts\n");
		FUNC13(dev);
		return (ENXIO);
	}

#ifdef CPSW_ETHERSWITCH
	for (i = 0; i < CPSW_VLANS; i++)
		cpsw_vgroups[i].vid = -1;
#endif

	/* Reset the controller. */
	FUNC19(sc);
	FUNC15(sc);

	for (i = 0; i < CPSW_PORTS; i++) {
		if (!sc->dualemac && i != sc->active_slave)
			continue;
		sc->port[i].dev = FUNC20(dev, "cpsw", i);
		if (sc->port[i].dev == NULL) {
			FUNC13(dev);
			return (ENXIO);
		}
	}
	FUNC9(dev);
	FUNC8(dev);

	return (0);
}