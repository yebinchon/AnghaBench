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
typedef  scalar_t__ vm_offset_t ;
typedef  int uint32_t ;
struct video_adapter_softc {int fb_size; int width; int height; int depth; int stride; int /*<<< orphan*/  va; scalar_t__ fb_addr; } ;
struct versatile_clcdc_softc {int width; int height; int mode; int fb_phys; scalar_t__ dma_tag; int /*<<< orphan*/  dma_map; scalar_t__ fb_base; int /*<<< orphan*/ * mem_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  CLCDC_CONTROL ; 
 int /*<<< orphan*/  CLCDC_TIMING0 ; 
 int /*<<< orphan*/  CLCDC_TIMING1 ; 
 int /*<<< orphan*/  CLCDC_TIMING2 ; 
 int /*<<< orphan*/  CLCDC_UPBASE ; 
 int CLCD_MODE_RGB565 ; 
 int CONTROL_BGR ; 
 int CONTROL_BPP16 ; 
 int CONTROL_EN ; 
 int CONTROL_PWR ; 
 int CONTROL_TFT ; 
 int CONTROL_VCOMP_BP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SCM_CLCD ; 
 int SCM_CLCD_CLCDID_MASK ; 
 int SCM_CLCD_CLCDID_SHIFT ; 
 int SCM_CLCD_LCD_MODE_MASK ; 
 int SCM_CLCD_NLCDIOON ; 
 int SCM_CLCD_PWR3V5VSWITCH ; 
 int SC_AUTODETECT_KBD ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 struct versatile_clcdc_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int) ; 
 struct video_adapter_softc va_softc ; 
 int /*<<< orphan*/  FUNC14 (struct versatile_clcdc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  versatile_fb_dmamap_cb ; 
 int FUNC15 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct versatile_clcdc_softc *sc = FUNC9(dev);
	struct video_adapter_softc *va_sc = &va_softc;
	int err, rid;
	uint32_t reg;
	int clcdid;
	int dma_size;

	/* Request memory resources */
	rid = 0;
	sc->mem_res = FUNC1(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC11(dev, "could not allocate memory resources\n");
		return (ENXIO);
	}

	err = FUNC15(SCM_CLCD, &reg);
	if (err) {
		FUNC11(dev, "failed to read SCM register\n");
		goto fail;
	}
	clcdid = (reg >> SCM_CLCD_CLCDID_SHIFT) & SCM_CLCD_CLCDID_MASK;
	switch (clcdid) {
		case 31:
			FUNC11(dev, "QEMU VGA 640x480\n");
			sc->width = 640;
			sc->height = 480;
			break;
		default:
			FUNC11(dev, "Unsupported: %d\n", clcdid);
			goto fail;
	}

	reg &= ~SCM_CLCD_LCD_MODE_MASK;
	reg |= CLCD_MODE_RGB565;
	sc->mode = CLCD_MODE_RGB565;
	FUNC16(SCM_CLCD, reg);
 	dma_size = sc->width*sc->height*2;
 
 	/*
	 * Power on LCD
	 */
	reg |= SCM_CLCD_PWR3V5VSWITCH | SCM_CLCD_NLCDIOON;
	FUNC16(SCM_CLCD, reg);

	/*
	 * XXX: hardcoded timing for VGA. For other modes/panels
	 * we need to keep table of timing register values
	 */
	/*
	 * XXX: set SYS_OSC1 
	 */
	FUNC14(sc, CLCDC_TIMING0, 0x3F1F3F9C);
	FUNC14(sc, CLCDC_TIMING1, 0x090B61DF);
	FUNC14(sc, CLCDC_TIMING2, 0x067F1800);
	/* XXX: timing 3? */

	/*
	 * Now allocate framebuffer memory
	 */
	err = FUNC2(
	    FUNC7(dev),
	    4, 0,		/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    dma_size, 1,		/* maxsize, nsegments */
	    dma_size, 0,		/* maxsegsize, flags */
	    NULL, NULL,			/* lockfunc, lockarg */
	    &sc->dma_tag);

	err = FUNC5(sc->dma_tag, (void **)&sc->fb_base,
	    0, &sc->dma_map);
	if (err) {
		FUNC11(dev, "cannot allocate framebuffer\n");
		goto fail;
	}

	err = FUNC4(sc->dma_tag, sc->dma_map, sc->fb_base,
	    dma_size, versatile_fb_dmamap_cb, &sc->fb_phys, BUS_DMA_NOWAIT);

	if (err) {
		FUNC11(dev, "cannot load DMA map\n");
		goto fail;
	}

	/* Make sure it's blank */
	FUNC12(sc->fb_base, 0x00, dma_size);

	FUNC14(sc, CLCDC_UPBASE, sc->fb_phys);

	err = (FUNC13(FUNC10(dev),
	    FUNC8(dev) | SC_AUTODETECT_KBD));

	if (err) {
		FUNC11(dev, "failed to attach syscons\n");
		goto fail;
	}

	/*
	 * XXX: hardcoded for VGA
	 */
	reg = CONTROL_VCOMP_BP | CONTROL_TFT | CONTROL_BGR | CONTROL_EN;
	reg |= CONTROL_BPP16;
	FUNC14(sc, CLCDC_CONTROL, reg);
	FUNC0(20);
	reg |= CONTROL_PWR;
	FUNC14(sc, CLCDC_CONTROL, reg);

	va_sc->fb_addr = (vm_offset_t)sc->fb_base;
	va_sc->fb_size = dma_size;
	va_sc->width = sc->width;
	va_sc->height = sc->height;
	va_sc->depth = 16;
	va_sc->stride = sc->width * 2;
	FUNC17(&va_sc->va);

	return (0);

fail:
	if (sc->fb_base)
		FUNC6(sc->dma_tag, sc->fb_base, sc->dma_map);
	if (sc->dma_tag)
		FUNC3(sc->dma_tag);
	return (err);
}