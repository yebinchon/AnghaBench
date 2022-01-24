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
struct sdma_conf {int dummy; } ;
struct sc_pcminfo {scalar_t__ chnum; void* dev; struct sc_info* sc; } ;
struct sc_info {void* dev; int dma_size; scalar_t__ sdma_channel; int /*<<< orphan*/  ih; int /*<<< orphan*/ * res; int /*<<< orphan*/  buf_base; int /*<<< orphan*/  buf_base_phys; int /*<<< orphan*/  dma_map; int /*<<< orphan*/  dma_tag; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/ * lock; void* conf; scalar_t__ pos; int /*<<< orphan*/ * sr; } ;
typedef  void* device_t ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_AV ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int SD_F_MPSAFE ; 
 int SND_STATUSLEN ; 
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sc_pcminfo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*,char*) ; 
 scalar_t__ FUNC9 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 void* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ *,struct sc_pcminfo*) ; 
 int /*<<< orphan*/  FUNC13 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sc_pcminfo*) ; 
 int FUNC14 (void*) ; 
 int FUNC15 (void*,struct sc_pcminfo*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (void*,int) ; 
 int /*<<< orphan*/  FUNC17 (void*,char*) ; 
 int /*<<< orphan*/ * rate_map ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct sc_info*) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*) ; 
 int /*<<< orphan*/  ssi_dmamap_cb ; 
 int /*<<< orphan*/  ssi_intr ; 
 int /*<<< orphan*/  ssi_spec ; 
 int /*<<< orphan*/  ssichan_class ; 
 int /*<<< orphan*/  ssimixer_class ; 

__attribute__((used)) static int
FUNC24(device_t dev)
{
	char status[SND_STATUSLEN];
	struct sc_pcminfo *scp;
	struct sc_info *sc;
	int err;

	sc = FUNC11(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
	sc->dev = dev;
	sc->sr = &rate_map[0];
	sc->pos = 0;
	sc->conf = FUNC11(sizeof(struct sdma_conf), M_DEVBUF, M_WAITOK | M_ZERO);

	sc->lock = FUNC22(FUNC7(dev), "ssi softc");
	if (sc->lock == NULL) {
		FUNC8(dev, "Can't create mtx\n");
		return (ENXIO);
	}

	if (FUNC0(dev, ssi_spec, sc->res)) {
		FUNC8(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC19(sc->res[0]);
	sc->bsh = FUNC18(sc->res[0]);

	/* SDMA */
	if (FUNC9(sc)) {
		FUNC8(dev, "could not find active SDMA\n");
		return (ENXIO);
	}

	/* Setup PCM */
	scp = FUNC11(sizeof(struct sc_pcminfo), M_DEVBUF, M_NOWAIT | M_ZERO);
	scp->sc = sc;
	scp->dev = dev;

	/*
	 * Maximum possible DMA buffer.
	 * Will be used partially to match 24 bit word.
	 */
	sc->dma_size = 131072;

	/*
	 * Must use dma_size boundary as modulo feature required.
	 * Modulo feature allows setup circular buffer.
	 */

	err = FUNC1(
	    FUNC4(sc->dev),
	    4, sc->dma_size,		/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    sc->dma_size, 1,		/* maxsize, nsegments */
	    sc->dma_size, 0,		/* maxsegsize, flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->dma_tag);

	err = FUNC3(sc->dma_tag, (void **)&sc->buf_base,
	    BUS_DMA_NOWAIT | BUS_DMA_COHERENT, &sc->dma_map);
	if (err) {
		FUNC8(dev, "cannot allocate framebuffer\n");
		return (ENXIO);
	}

	err = FUNC2(sc->dma_tag, sc->dma_map, sc->buf_base,
	    sc->dma_size, ssi_dmamap_cb, &sc->buf_base_phys, BUS_DMA_NOWAIT);
	if (err) {
		FUNC8(dev, "cannot load DMA map\n");
		return (ENXIO);
	}

	FUNC6(sc->buf_base, sc->dma_size);

	/* Setup interrupt handler */
	err = FUNC5(dev, sc->res[1], INTR_MPSAFE | INTR_TYPE_AV,
	    NULL, ssi_intr, scp, &sc->ih);
	if (err) {
		FUNC8(dev, "Unable to alloc interrupt resource.\n");
		return (ENXIO);
	}

	FUNC16(dev, FUNC14(dev) | SD_F_MPSAFE);

	err = FUNC15(dev, scp, 1, 0);
	if (err) {
		FUNC8(dev, "Can't register pcm.\n");
		return (ENXIO);
	}

	scp->chnum = 0;
	FUNC13(dev, PCMDIR_PLAY, &ssichan_class, scp);
	scp->chnum++;

	FUNC23(status, SND_STATUSLEN, "at simplebus");
	FUNC17(dev, status);

	FUNC12(dev, &ssimixer_class, scp);
	FUNC21(sc);

	FUNC10(dev);

	sc->sdma_channel = FUNC20();
	if (sc->sdma_channel < 0) {
		FUNC8(sc->dev, "Can't get sDMA channel\n");
		return (1);
	}

	return (0);
}