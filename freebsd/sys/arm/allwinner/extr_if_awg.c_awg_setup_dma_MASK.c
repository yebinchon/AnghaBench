#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ desc_ring_paddr; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_tag; TYPE_4__* buf_map; int /*<<< orphan*/  buf_tag; TYPE_5__* desc_ring; int /*<<< orphan*/  buf_spare_map; } ;
struct TYPE_7__ {scalar_t__ desc_ring_paddr; TYPE_1__* buf_map; int /*<<< orphan*/  buf_tag; scalar_t__ queued; TYPE_5__* desc_ring; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_tag; } ;
struct awg_softc {TYPE_3__ rx; TYPE_2__ tx; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_10__ {void* next; } ;
struct TYPE_9__ {int /*<<< orphan*/ * mbuf; int /*<<< orphan*/  map; } ;
struct TYPE_6__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_WAITOK ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int DESC_ALIGN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EMAC_RX_DMA_LIST ; 
 int /*<<< orphan*/  EMAC_TX_DMA_LIST ; 
 int /*<<< orphan*/  MCLBYTES ; 
 int RX_DESC_COUNT ; 
 int /*<<< orphan*/  RX_DESC_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int TX_DESC_COUNT ; 
 int /*<<< orphan*/  TX_DESC_SIZE ; 
 int TX_MAX_SEGS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct awg_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  awg_dmamap_cb ; 
 int FUNC4 (struct awg_softc*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct awg_softc* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC13 (scalar_t__) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct awg_softc *sc;
	int error, i;

	sc = FUNC11(dev);

	/* Setup TX ring */
	error = FUNC5(
	    FUNC10(dev),	/* Parent tag */
	    DESC_ALIGN, 0,		/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    TX_DESC_SIZE, 1,		/* maxsize, nsegs */
	    TX_DESC_SIZE,		/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->tx.desc_tag);
	if (error != 0) {
		FUNC12(dev, "cannot create TX descriptor ring tag\n");
		return (error);
	}

	error = FUNC9(sc->tx.desc_tag, (void **)&sc->tx.desc_ring,
	    BUS_DMA_COHERENT | BUS_DMA_WAITOK | BUS_DMA_ZERO, &sc->tx.desc_map);
	if (error != 0) {
		FUNC12(dev, "cannot allocate TX descriptor ring\n");
		return (error);
	}

	error = FUNC7(sc->tx.desc_tag, sc->tx.desc_map,
	    sc->tx.desc_ring, TX_DESC_SIZE, awg_dmamap_cb,
	    &sc->tx.desc_ring_paddr, 0);
	if (error != 0) {
		FUNC12(dev, "cannot load TX descriptor ring\n");
		return (error);
	}

	for (i = 0; i < TX_DESC_COUNT; i++)
		sc->tx.desc_ring[i].next =
		    FUNC13(sc->tx.desc_ring_paddr + FUNC0(FUNC2(i)));

	error = FUNC5(
	    FUNC10(dev),	/* Parent tag */
	    1, 0,			/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    MCLBYTES, TX_MAX_SEGS,	/* maxsize, nsegs */
	    MCLBYTES,			/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->tx.buf_tag);
	if (error != 0) {
		FUNC12(dev, "cannot create TX buffer tag\n");
		return (error);
	}

	sc->tx.queued = 0;
	for (i = 0; i < TX_DESC_COUNT; i++) {
		error = FUNC6(sc->tx.buf_tag, 0,
		    &sc->tx.buf_map[i].map);
		if (error != 0) {
			FUNC12(dev, "cannot create TX buffer map\n");
			return (error);
		}
	}

	/* Setup RX ring */
	error = FUNC5(
	    FUNC10(dev),	/* Parent tag */
	    DESC_ALIGN, 0,		/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    RX_DESC_SIZE, 1,		/* maxsize, nsegs */
	    RX_DESC_SIZE,		/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->rx.desc_tag);
	if (error != 0) {
		FUNC12(dev, "cannot create RX descriptor ring tag\n");
		return (error);
	}

	error = FUNC9(sc->rx.desc_tag, (void **)&sc->rx.desc_ring,
	    BUS_DMA_COHERENT | BUS_DMA_WAITOK | BUS_DMA_ZERO, &sc->rx.desc_map);
	if (error != 0) {
		FUNC12(dev, "cannot allocate RX descriptor ring\n");
		return (error);
	}

	error = FUNC7(sc->rx.desc_tag, sc->rx.desc_map,
	    sc->rx.desc_ring, RX_DESC_SIZE, awg_dmamap_cb,
	    &sc->rx.desc_ring_paddr, 0);
	if (error != 0) {
		FUNC12(dev, "cannot load RX descriptor ring\n");
		return (error);
	}

	error = FUNC5(
	    FUNC10(dev),	/* Parent tag */
	    1, 0,			/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    MCLBYTES, 1,		/* maxsize, nsegs */
	    MCLBYTES,			/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->rx.buf_tag);
	if (error != 0) {
		FUNC12(dev, "cannot create RX buffer tag\n");
		return (error);
	}

	error = FUNC6(sc->rx.buf_tag, 0, &sc->rx.buf_spare_map);
	if (error != 0) {
		FUNC12(dev,
		    "cannot create RX buffer spare map\n");
		return (error);
	}

	for (i = 0; i < RX_DESC_COUNT; i++) {
		sc->rx.desc_ring[i].next =
		    FUNC13(sc->rx.desc_ring_paddr + FUNC0(FUNC1(i)));

		error = FUNC6(sc->rx.buf_tag, 0,
		    &sc->rx.buf_map[i].map);
		if (error != 0) {
			FUNC12(dev, "cannot create RX buffer map\n");
			return (error);
		}
		sc->rx.buf_map[i].mbuf = NULL;
		error = FUNC4(sc, i);
		if (error != 0) {
			FUNC12(dev, "cannot create RX buffer\n");
			return (error);
		}
	}
	FUNC8(sc->rx.desc_tag, sc->rx.desc_map,
	    BUS_DMASYNC_PREWRITE);

	/* Write transmit and receive descriptor base address registers */
	FUNC3(sc, EMAC_TX_DMA_LIST, sc->tx.desc_ring_paddr);
	FUNC3(sc, EMAC_RX_DMA_LIST, sc->rx.desc_ring_paddr);

	return (0);
}