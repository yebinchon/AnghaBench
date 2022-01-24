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
struct aw_mmc_softc {int aw_dma_map_err; int /*<<< orphan*/  aw_dma_buf_map; int /*<<< orphan*/  aw_dma_buf_tag; TYPE_1__* aw_mmc_conf; int /*<<< orphan*/  aw_dev; int /*<<< orphan*/  aw_dma_desc; int /*<<< orphan*/  aw_dma_map; int /*<<< orphan*/  aw_dma_tag; } ;
struct TYPE_2__ {int dma_xferlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  AW_MMC_DMA_ALIGN ; 
 int AW_MMC_DMA_DESC_SIZE ; 
 int AW_MMC_DMA_SEGS ; 
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_WAITOK ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  aw_dma_desc_cb ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct aw_mmc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct aw_mmc_softc *sc)
{
	int error;

	/* Allocate the DMA descriptor memory. */
	error = FUNC0(
	    FUNC4(sc->aw_dev),	/* parent */
	    AW_MMC_DMA_ALIGN, 0,		/* align, boundary */
	    BUS_SPACE_MAXADDR_32BIT,		/* lowaddr */
	    BUS_SPACE_MAXADDR,			/* highaddr */
	    NULL, NULL,				/* filter, filterarg*/
	    AW_MMC_DMA_DESC_SIZE, 1,		/* maxsize, nsegment */
	    AW_MMC_DMA_DESC_SIZE,		/* maxsegsize */
	    0,					/* flags */
	    NULL, NULL,				/* lock, lockarg*/
	    &sc->aw_dma_tag);
	if (error)
		return (error);

	error = FUNC3(sc->aw_dma_tag, &sc->aw_dma_desc,
	    BUS_DMA_COHERENT | BUS_DMA_WAITOK | BUS_DMA_ZERO,
	    &sc->aw_dma_map);
	if (error)
		return (error);

	error = FUNC2(sc->aw_dma_tag,
	    sc->aw_dma_map,
	    sc->aw_dma_desc, AW_MMC_DMA_DESC_SIZE,
	    aw_dma_desc_cb, sc, 0);
	if (error)
		return (error);
	if (sc->aw_dma_map_err)
		return (sc->aw_dma_map_err);

	/* Create the DMA map for data transfers. */
	error = FUNC0(
	    FUNC4(sc->aw_dev),	/* parent */
	    AW_MMC_DMA_ALIGN, 0,		/* align, boundary */
	    BUS_SPACE_MAXADDR_32BIT,		/* lowaddr */
	    BUS_SPACE_MAXADDR,			/* highaddr */
	    NULL, NULL,				/* filter, filterarg*/
	    sc->aw_mmc_conf->dma_xferlen *
	    AW_MMC_DMA_SEGS, AW_MMC_DMA_SEGS,	/* maxsize, nsegments */
	    sc->aw_mmc_conf->dma_xferlen,	/* maxsegsize */
	    BUS_DMA_ALLOCNOW,			/* flags */
	    NULL, NULL,				/* lock, lockarg*/
	    &sc->aw_dma_buf_tag);
	if (error)
		return (error);
	error = FUNC1(sc->aw_dma_buf_tag, 0,
	    &sc->aw_dma_buf_map);
	if (error)
		return (error);

	return (0);
}