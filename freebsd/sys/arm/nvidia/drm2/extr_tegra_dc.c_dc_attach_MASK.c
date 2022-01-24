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
struct TYPE_2__ {void* dev; } ;
struct dc_softc {int pitch_align; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * hwreset_dc; int /*<<< orphan*/ * clk_dc; int /*<<< orphan*/ * clk_parent; int /*<<< orphan*/ * irq_ih; void* dev; TYPE_1__ tegra_crtc; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  void* device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC4 (void*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 struct dc_softc* FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*,char*) ; 
 int FUNC12 (struct dc_softc*) ; 
 int FUNC13 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct dc_softc *sc;
	phandle_t node;
	int rid, rv;

	sc = FUNC10(dev);
	sc->dev = dev;
	sc->tegra_crtc.dev = dev;

	node = FUNC15(sc->dev);
	FUNC1(sc);

	rid = 0;
	sc->mem_res = FUNC4(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC11(dev, "Cannot allocate memory resources\n");
		goto fail;
	}

	rid = 0;
	sc->irq_res = FUNC4(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
	if (sc->irq_res == NULL) {
		FUNC11(dev, "Cannot allocate IRQ resources\n");
		goto fail;
	}

	rv = FUNC13(sc, node);
	if (rv != 0) {
		FUNC11(dev, "Cannot parse FDT resources\n");
		goto fail;
	}
	rv = FUNC12(sc);
	if (rv != 0) {
		FUNC11(dev, "Cannot enable FDT resources\n");
		goto fail;
	}

	/*
	 * Tegra124
	 *  -  64 for RGB modes
	 *  - 128 for YUV planar modes
	 *  - 256 for block linear modes
	 */
	sc->pitch_align = 256;

	rv = FUNC3(FUNC9(sc->dev), sc->dev);
	if (rv != 0) {
		FUNC11(dev, "Cannot register DRM device\n");
		goto fail;
	}

	return (FUNC5(dev));

fail:
	FUNC2(FUNC9(sc->dev), sc->dev);
	if (sc->irq_ih != NULL)
		FUNC7(dev, sc->irq_res, sc->irq_ih);
	if (sc->clk_parent != NULL)
		FUNC8(sc->clk_parent);
	if (sc->clk_dc != NULL)
		FUNC8(sc->clk_dc);
	if (sc->hwreset_dc != NULL)
		FUNC14(sc->hwreset_dc);
	if (sc->irq_res != NULL)
		FUNC6(dev, SYS_RES_IRQ, 0, sc->irq_res);
	if (sc->mem_res != NULL)
		FUNC6(dev, SYS_RES_MEMORY, 0, sc->mem_res);
	FUNC0(sc);

	return (ENXIO);
}