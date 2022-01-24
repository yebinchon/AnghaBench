#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct a31dmac_softc {int nchans; int /*<<< orphan*/ * res; int /*<<< orphan*/ * ih; TYPE_2__* chans; int /*<<< orphan*/  dmat; int /*<<< orphan*/  mtx; } ;
struct a31dmac_config {int nchans; } ;
typedef  int /*<<< orphan*/ * hwreset_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/ * clk_t ;
struct TYPE_6__ {size_t index; int /*<<< orphan*/  dmamap; int /*<<< orphan*/ * desc; int /*<<< orphan*/ * callbackarg; int /*<<< orphan*/ * callback; struct a31dmac_softc* sc; } ;
struct TYPE_5__ {scalar_t__ ocd_data; } ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_WAITOK ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  DESC_ALIGN ; 
 int /*<<< orphan*/  DESC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  DMA_IRQ_EN_REG0 ; 
 int /*<<< orphan*/  DMA_IRQ_EN_REG1 ; 
 int /*<<< orphan*/  DMA_IRQ_PEND_REG0 ; 
 int /*<<< orphan*/  DMA_IRQ_PEND_REG1 ; 
 int /*<<< orphan*/  FUNC1 (struct a31dmac_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  a31dmac_dmamap_cb ; 
 int /*<<< orphan*/  a31dmac_intr ; 
 int /*<<< orphan*/  a31dmac_spec ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct a31dmac_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compat_data ; 
 struct a31dmac_softc* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC23 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC28(device_t dev)
{
	struct a31dmac_softc *sc;
	struct a31dmac_config *conf;
	u_int index;
	hwreset_t rst;
	clk_t clk;
	int error;

	sc = FUNC17(dev);
	conf = (void *)FUNC27(dev, compat_data)->ocd_data;
	clk = NULL;
	rst = NULL;

	if (FUNC4(dev, a31dmac_spec, sc->res)) {
		FUNC18(dev, "cannot allocate resources for device\n");
		return (ENXIO);
	}

	FUNC25(&sc->mtx, "a31 dmac", NULL, MTX_SPIN);

	/* Clock and reset setup */
	if (FUNC15(dev, 0, 0, &clk) != 0) {
		FUNC18(dev, "cannot get clock\n");
		goto fail;
	}
	if (FUNC14(clk) != 0) {
		FUNC18(dev, "cannot enable clock\n");
		goto fail;
	}
	if (FUNC21(dev, 0, 0, &rst) != 0) {
		FUNC18(dev, "cannot get hwreset\n");
		goto fail;
	}
	if (FUNC20(rst) != 0) {
		FUNC18(dev, "cannot de-assert reset\n");
		goto fail;
	}

	/* Descriptor DMA */
	error = FUNC5(
		FUNC10(dev),		/* Parent tag */
		DESC_ALIGN, 0,			/* alignment, boundary */
		BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
		BUS_SPACE_MAXADDR,		/* highaddr */
		NULL, NULL,			/* filter, filterarg */
		DESC_SIZE, 1,			/* maxsize, nsegs */
		DESC_SIZE,			/* maxsegsize */
		0,				/* flags */
		NULL, NULL,			/* lockfunc, lockarg */
		&sc->dmat);
	if (error != 0) {
		FUNC18(dev, "cannot create dma tag\n");
		goto fail;
	}

	/* Disable all interrupts and clear pending status */
	FUNC1(sc, DMA_IRQ_EN_REG0, 0);
	FUNC1(sc, DMA_IRQ_EN_REG1, 0);
	FUNC1(sc, DMA_IRQ_PEND_REG0, ~0);
	FUNC1(sc, DMA_IRQ_PEND_REG1, ~0);

	/* Initialize channels */
	sc->nchans = conf->nchans;
	sc->chans = FUNC23(sizeof(*sc->chans) * sc->nchans, M_DEVBUF,
	    M_WAITOK | M_ZERO);

	for (index = 0; index < sc->nchans; index++) {
		sc->chans[index].sc = sc;
		sc->chans[index].index = index;
		sc->chans[index].callback = NULL;
		sc->chans[index].callbackarg = NULL;

		error = FUNC8(sc->dmat,
		    (void **)&sc->chans[index].desc,
		    BUS_DMA_WAITOK | BUS_DMA_COHERENT,
		    &sc->chans[index].dmamap);
		if (error != 0) {
			FUNC18(dev, "cannot allocate dma mem\n");
			goto fail;
		}
		error = FUNC6(sc->dmat, sc->chans[index].dmamap, 
		    sc->chans[index].desc, sizeof(*sc->chans[index].desc),
		    a31dmac_dmamap_cb, &sc->chans[index], BUS_DMA_WAITOK);
		if (error != 0) {
			FUNC18(dev, "cannot load dma map\n");
			goto fail;
		}

		FUNC1(sc, FUNC0(index), 0);
	}

	error = FUNC12(dev, sc->res[1], INTR_MPSAFE | INTR_TYPE_MISC,
	    NULL, a31dmac_intr, sc, &sc->ih);
	if (error != 0) {
		FUNC18(dev, "could not setup interrupt handler\n");
		FUNC11(dev, a31dmac_spec, sc->res);
		FUNC24(&sc->mtx);
		return (ENXIO);
	}

	FUNC2(FUNC3(FUNC26(dev)), dev);
	return (0);

fail:
	for (index = 0; index < sc->nchans; index++)
		if (sc->chans[index].desc != NULL) {
			FUNC7(sc->dmat, sc->chans[index].dmamap);
			FUNC9(sc->dmat, sc->chans[index].desc,
			    sc->chans[index].dmamap);
		}
	if (sc->chans != NULL)
		FUNC19(sc->chans, M_DEVBUF);
	if (sc->ih != NULL)
		FUNC13(dev, sc->res[1], sc->ih);
	if (rst != NULL)
		FUNC22(rst);
	if (clk != NULL)
		FUNC16(clk);
	FUNC11(dev, a31dmac_spec, sc->res);

	return (ENXIO);
}