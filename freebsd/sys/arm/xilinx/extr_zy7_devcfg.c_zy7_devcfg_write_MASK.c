#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct zy7_devcfg_softc {int /*<<< orphan*/  dma_map; int /*<<< orphan*/  dma_tag; int /*<<< orphan*/  sc_mtx; } ;
struct uio {scalar_t__ uio_offset; int uio_resid; } ;
struct cdev {struct zy7_devcfg_softc* si_drv1; } ;
typedef  scalar_t__ bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct zy7_devcfg_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct zy7_devcfg_softc*) ; 
 int EIO ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PCATCH ; 
 int FUNC3 (struct zy7_devcfg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct zy7_devcfg_softc*,int /*<<< orphan*/ ,int) ; 
 int ZY7_DEVCFG_DMA_ADDR_ILLEGAL ; 
 int ZY7_DEVCFG_DMA_ADDR_WAIT_PCAP ; 
 int /*<<< orphan*/  ZY7_DEVCFG_DMA_DST_ADDR ; 
 int /*<<< orphan*/  ZY7_DEVCFG_DMA_DST_LEN ; 
 int /*<<< orphan*/  ZY7_DEVCFG_DMA_SRC_ADDR ; 
 int /*<<< orphan*/  ZY7_DEVCFG_DMA_SRC_LEN ; 
 int ZY7_DEVCFG_INT_ALL ; 
 int ZY7_DEVCFG_INT_DMA_DONE ; 
 int /*<<< orphan*/  ZY7_DEVCFG_INT_MASK ; 
 int ZY7_DEVCFG_INT_PCFG_DONE ; 
 int /*<<< orphan*/  ZY7_DEVCFG_INT_STATUS ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (void*,int,struct uio*) ; 
 int /*<<< orphan*/  FUNC12 (struct zy7_devcfg_softc*) ; 
 int FUNC13 (struct zy7_devcfg_softc*) ; 
 int /*<<< orphan*/  zy7_dma_cb2 ; 
 int /*<<< orphan*/  zy7_en_level_shifters ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static int
FUNC16(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct zy7_devcfg_softc *sc = dev->si_drv1;
	void *dma_mem;
	bus_addr_t dma_physaddr;
	int segsz, err;

	FUNC0(sc);

	/* First write?  Reset PL. */
	if (uio->uio_offset == 0 && uio->uio_resid > 0)	{
		FUNC12(sc);
		FUNC15();
		err = FUNC13(sc);
		if (err != 0) {
			FUNC1(sc);
			return (err);
		}
	}

	/* Allocate dma memory and load. */
	err = FUNC8(sc->dma_tag, &dma_mem, BUS_DMA_NOWAIT,
			       &sc->dma_map);
	if (err != 0) {
		FUNC1(sc);
		return (err);
	}
	err = FUNC5(sc->dma_tag, sc->dma_map, dma_mem, PAGE_SIZE,
			      zy7_dma_cb2, &dma_physaddr, 0);
	if (err != 0) {
		FUNC9(sc->dma_tag, dma_mem, sc->dma_map);
		FUNC1(sc);
		return (err);
	}

	while (uio->uio_resid > 0) {
		/* If DONE signal has been set, we shouldn't write anymore. */
		if ((FUNC3(sc, ZY7_DEVCFG_INT_STATUS) &
		     ZY7_DEVCFG_INT_PCFG_DONE) != 0) {
			err = EIO;
			break;
		}

		/* uiomove the data from user buffer to our dma map. */
		segsz = FUNC2(PAGE_SIZE, uio->uio_resid);
		FUNC1(sc);
		err = FUNC11(dma_mem, segsz, uio);
		FUNC0(sc);
		if (err != 0)
			break;

		/* Flush the cache to memory. */
		FUNC6(sc->dma_tag, sc->dma_map,
				BUS_DMASYNC_PREWRITE);

		/* Program devcfg's DMA engine.  The ordering of these
		 * register writes is critical.
		 */
		if (uio->uio_resid > segsz)
			FUNC4(sc, ZY7_DEVCFG_DMA_SRC_ADDR,
			    (uint32_t) dma_physaddr);
		else
			FUNC4(sc, ZY7_DEVCFG_DMA_SRC_ADDR,
			    (uint32_t) dma_physaddr |
			    ZY7_DEVCFG_DMA_ADDR_WAIT_PCAP);
		FUNC4(sc, ZY7_DEVCFG_DMA_DST_ADDR, ZY7_DEVCFG_DMA_ADDR_ILLEGAL);
		FUNC4(sc, ZY7_DEVCFG_DMA_SRC_LEN, (segsz+3)/4);
		FUNC4(sc, ZY7_DEVCFG_DMA_DST_LEN, 0);

		/* Now clear done bit and set up DMA done interrupt. */
		FUNC4(sc, ZY7_DEVCFG_INT_STATUS, ZY7_DEVCFG_INT_ALL);
		FUNC4(sc, ZY7_DEVCFG_INT_MASK, ~ZY7_DEVCFG_INT_DMA_DONE);

		/* Wait for DMA done interrupt. */
		err = FUNC10(sc->dma_map, &sc->sc_mtx, PCATCH,
				"zy7dma", hz);
		if (err != 0)
			break;

		FUNC6(sc->dma_tag, sc->dma_map,
				BUS_DMASYNC_POSTWRITE);

		/* Check DONE signal. */
		if ((FUNC3(sc, ZY7_DEVCFG_INT_STATUS) &
		     ZY7_DEVCFG_INT_PCFG_DONE) != 0)
			FUNC14(zy7_en_level_shifters);
	}

	FUNC7(sc->dma_tag, sc->dma_map);
	FUNC9(sc->dma_tag, dma_mem, sc->dma_map);
	FUNC1(sc);
	return (err);
}