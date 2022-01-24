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
struct sc_pcminfo {scalar_t__ chnum; void* dev; struct sc_info* sc; } ;
struct sc_info {int dma_size; int /*<<< orphan*/  ih; int /*<<< orphan*/ * res; int /*<<< orphan*/  buf_base; int /*<<< orphan*/  buf_base_phys; int /*<<< orphan*/  dma_map; int /*<<< orphan*/  dma_tag; void* dev; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/ * lock; scalar_t__ pos; int /*<<< orphan*/ * sr; } ;
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
 void* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ *,struct sc_pcminfo*) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sc_pcminfo*) ; 
 int FUNC13 (void*) ; 
 int FUNC14 (void*,struct sc_pcminfo*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (void*,int) ; 
 int /*<<< orphan*/  FUNC16 (void*,char*) ; 
 int /*<<< orphan*/ * rate_map ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sai_dmamap_cb ; 
 int /*<<< orphan*/  sai_intr ; 
 int /*<<< orphan*/  sai_spec ; 
 int /*<<< orphan*/  saichan_class ; 
 int /*<<< orphan*/  saimixer_class ; 
 int /*<<< orphan*/  FUNC19 (struct sc_pcminfo*) ; 
 int /*<<< orphan*/  FUNC20 (struct sc_info*) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,char*) ; 

__attribute__((used)) static int
FUNC23(device_t dev)
{
	char status[SND_STATUSLEN];
	struct sc_pcminfo *scp;
	struct sc_info *sc;
	int err;

	sc = FUNC10(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
	sc->dev = dev;
	sc->sr = &rate_map[0];
	sc->pos = 0;

	sc->lock = FUNC21(FUNC7(dev), "sai softc");
	if (sc->lock == NULL) {
		FUNC8(dev, "Cant create mtx\n");
		return (ENXIO);
	}

	if (FUNC0(dev, sai_spec, sc->res)) {
		FUNC8(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC18(sc->res[0]);
	sc->bsh = FUNC17(sc->res[0]);

	/* eDMA */
	if (FUNC9(sc)) {
		FUNC8(dev, "could not find active eDMA\n");
		return (ENXIO);
	}

	/* Setup PCM */
	scp = FUNC10(sizeof(struct sc_pcminfo), M_DEVBUF, M_NOWAIT | M_ZERO);
	scp->sc = sc;
	scp->dev = dev;

	/* DMA */
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
	    sc->dma_size, sai_dmamap_cb, &sc->buf_base_phys, BUS_DMA_NOWAIT);
	if (err) {
		FUNC8(dev, "cannot load DMA map\n");
		return (ENXIO);
	}

	FUNC6(sc->buf_base, sc->dma_size);

	/* Setup interrupt handler */
	err = FUNC5(dev, sc->res[1], INTR_MPSAFE | INTR_TYPE_AV,
	    NULL, sai_intr, scp, &sc->ih);
	if (err) {
		FUNC8(dev, "Unable to alloc interrupt resource.\n");
		return (ENXIO);
	}

	FUNC15(dev, FUNC13(dev) | SD_F_MPSAFE);

	err = FUNC14(dev, scp, 1, 0);
	if (err) {
		FUNC8(dev, "Can't register pcm.\n");
		return (ENXIO);
	}

	scp->chnum = 0;
	FUNC12(dev, PCMDIR_PLAY, &saichan_class, scp);
	scp->chnum++;

	FUNC22(status, SND_STATUSLEN, "at simplebus");
	FUNC16(dev, status);

	FUNC11(dev, &saimixer_class, scp);

	FUNC19(scp);
	FUNC20(sc);

	return (0);
}