#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {intptr_t fb_vbase; int fb_size; int fb_bpp; int fb_depth; int fb_stride; int fb_width; int fb_height; int /*<<< orphan*/  fb_pbase; int /*<<< orphan*/  fb_name; } ;
struct ipu_softc {int sc_fb_size; int /*<<< orphan*/  sc_dev; TYPE_2__* sc_mode; TYPE_1__ sc_fb_info; int /*<<< orphan*/  sc_fb_phys; scalar_t__ sc_fb_base; int /*<<< orphan*/  sc_dma_map; int /*<<< orphan*/  sc_dma_tag; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_4__ {int hdisplay; int vdisplay; } ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DI_PORT ; 
 int DMA_CHANNEL ; 
 int ETIMEDOUT ; 
 int IPU_CONF ; 
 int IPU_CONF_DC_EN ; 
 int IPU_CONF_DI0_EN ; 
 int IPU_CONF_DI1_EN ; 
 int IPU_CONF_DMFC_EN ; 
 int IPU_CONF_DP_EN ; 
 int IPU_IDMAC_CH_EN_1 ; 
 int IPU_IDMAC_CH_EN_2 ; 
 int IPU_MEM_RST ; 
 int IPU_MEM_RST_ALL ; 
 int IPU_MEM_RST_START ; 
 int FUNC1 (struct ipu_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu_softc*,int,int) ; 
 int MODE_BPP ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ipu_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct ipu_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct ipu_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct ipu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ipu_softc*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ipu_softc*,scalar_t__) ; 
 int /*<<< orphan*/  ipu_dmamap_cb ; 
 int /*<<< orphan*/  FUNC18 (struct ipu_softc*) ; 
 size_t FUNC19 (int) ; 

__attribute__((used)) static int
FUNC20(struct ipu_softc *sc)
{
	uint32_t reg, off;
	int i, err;
	size_t dma_size;

	FUNC2(sc, IPU_CONF, DI_PORT ? IPU_CONF_DI1_EN : IPU_CONF_DI0_EN);

	FUNC2(sc, IPU_MEM_RST, IPU_MEM_RST_ALL);
	i = 1000;
	while (i-- > 0) {
		if (!(FUNC1(sc, IPU_MEM_RST) & IPU_MEM_RST_START))
			break;
		FUNC0(1);
	}

	if (i <= 0) {
		err = ETIMEDOUT;
		FUNC10(sc->sc_dev, "timeout while resetting memory\n");
		goto fail;
	}

	FUNC15(sc, 0);
	FUNC16(sc, 0, 0,  7, 0xff);
	FUNC16(sc, 0, 1, 15, 0xff);
	FUNC16(sc, 0, 2, 23, 0xff);

	dma_size = FUNC19(sc->sc_mode->hdisplay * sc->sc_mode->vdisplay * (MODE_BPP / 8));

	/*
	 * Now allocate framebuffer memory
	 */
	err = FUNC3(
	    FUNC6(sc->sc_dev),
	    4, 0,		/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    dma_size, 1,			/* maxsize, nsegments */
	    dma_size, 0,			/* maxsegsize, flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->sc_dma_tag);
	if (err)
		goto fail;

	err = FUNC5(sc->sc_dma_tag, (void **)&sc->sc_fb_base,
	    BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->sc_dma_map);

	if (err) {
		FUNC10(sc->sc_dev, "cannot allocate framebuffer\n");
		goto fail;
	}

	err = FUNC4(sc->sc_dma_tag, sc->sc_dma_map, sc->sc_fb_base,
	    dma_size, ipu_dmamap_cb, &sc->sc_fb_phys, BUS_DMA_NOWAIT);

	if (err) {
		FUNC10(sc->sc_dev, "cannot load DMA map\n");
		goto fail;
	}

	/* Calculate actual FB Size */
	sc->sc_fb_size = sc->sc_mode->hdisplay * sc->sc_mode->vdisplay * MODE_BPP / 8;

	FUNC14(sc, DI_PORT);
	reg = FUNC1(sc, IPU_CONF);
	reg |= IPU_CONF_DMFC_EN | IPU_CONF_DC_EN | IPU_CONF_DP_EN;
	FUNC2(sc, IPU_CONF, reg);

	FUNC12(sc, DI_PORT);
	FUNC18(sc);
	FUNC17(sc, DI_PORT);

	/* Enable DMA channel */
	off = (DMA_CHANNEL > 31) ? IPU_IDMAC_CH_EN_2 : IPU_IDMAC_CH_EN_1;
	reg = FUNC1(sc, off);
	reg |= (1 << (DMA_CHANNEL & 0x1f));
	FUNC2(sc, off, reg);

	FUNC13(sc);

	sc->sc_fb_info.fb_name = FUNC8(sc->sc_dev);
	sc->sc_fb_info.fb_vbase = (intptr_t)sc->sc_fb_base;
	sc->sc_fb_info.fb_pbase = sc->sc_fb_phys;
	sc->sc_fb_info.fb_size = sc->sc_fb_size;
	sc->sc_fb_info.fb_bpp = sc->sc_fb_info.fb_depth = MODE_BPP;
	sc->sc_fb_info.fb_stride = sc->sc_mode->hdisplay * MODE_BPP / 8;
	sc->sc_fb_info.fb_width = sc->sc_mode->hdisplay;
	sc->sc_fb_info.fb_height = sc->sc_mode->vdisplay;

	device_t fbd = FUNC7(sc->sc_dev, "fbd",
	    FUNC9(sc->sc_dev));
	if (fbd == NULL) {
		FUNC10(sc->sc_dev, "Failed to add fbd child\n");
		goto fail;
	}
	if (FUNC11(fbd) != 0) {
		FUNC10(sc->sc_dev, "Failed to attach fbd device\n");
		goto fail;
	}

	return (0);
fail:

	return (err);
}