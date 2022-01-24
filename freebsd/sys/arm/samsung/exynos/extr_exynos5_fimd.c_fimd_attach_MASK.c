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
struct panel_info {int clkval_f; int width; int height; scalar_t__ ivclk; scalar_t__ fixvclk; } ;
struct TYPE_2__ {int fb_width; int fb_height; int fb_stride; int fb_bpp; int fb_depth; int fb_size; intptr_t fb_vbase; intptr_t fb_pbase; int /*<<< orphan*/  fb_name; } ;
struct fimd_softc {int /*<<< orphan*/ * dev; int /*<<< orphan*/ * sc_fbd; TYPE_1__ sc_info; void* bsh_sysreg; void* bst_sysreg; struct panel_info* panel; int /*<<< orphan*/ * res; void* bsh_disp; void* bst_disp; void* bsh; void* bst; } ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FIMDBYPASS_DISP1 ; 
 int /*<<< orphan*/  M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  VM_MEMATTR_UNCACHEABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct fimd_softc* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct fimd_softc*) ; 
 int /*<<< orphan*/  fimd_spec ; 
 scalar_t__ FUNC12 (struct fimd_softc*,struct panel_info*) ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,intptr_t,...) ; 
 void* FUNC16 (int /*<<< orphan*/ ) ; 
 void* FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (intptr_t) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct panel_info panel;
	struct fimd_softc *sc;
	device_t gpio_dev;
	int reg;

	sc = FUNC7(dev);
	sc->dev = dev;

	if (FUNC0(dev, fimd_spec, sc->res)) {
		FUNC9(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC17(sc->res[0]);
	sc->bsh = FUNC16(sc->res[0]);
	sc->bst_disp = FUNC17(sc->res[1]);
	sc->bsh_disp = FUNC16(sc->res[1]);
	sc->bst_sysreg = FUNC17(sc->res[2]);
	sc->bsh_sysreg = FUNC16(sc->res[2]);

	if (FUNC12(sc, &panel)) {
		FUNC9(dev, "Can't get panel info\n");
		return (ENXIO);
	}

	panel.fixvclk = 0;
	panel.ivclk = 0;
	panel.clkval_f = 2;

	sc->panel = &panel;

	/* Get the GPIO device, we need this to give power to USB */
	gpio_dev = FUNC4(FUNC3("gpio"), 0);
	if (gpio_dev == NULL) {
		/* TODO */
	}

	reg = FUNC1(sc->bst_sysreg, sc->bsh_sysreg, 0x214);
	reg |= FIMDBYPASS_DISP1;
	FUNC2(sc->bst_sysreg, sc->bsh_sysreg, 0x214, reg);

	sc->sc_info.fb_width = panel.width;
	sc->sc_info.fb_height = panel.height;
	sc->sc_info.fb_stride = sc->sc_info.fb_width * 2;
	sc->sc_info.fb_bpp = sc->sc_info.fb_depth = 16;
	sc->sc_info.fb_size = sc->sc_info.fb_height * sc->sc_info.fb_stride;
	sc->sc_info.fb_vbase = (intptr_t)FUNC13(sc->sc_info.fb_size,
	    M_ZERO, 0, ~0, PAGE_SIZE, 0, VM_MEMATTR_UNCACHEABLE);
	sc->sc_info.fb_pbase = (intptr_t)FUNC18(sc->sc_info.fb_vbase);

#if 0
	printf("%dx%d [%d]\n", sc->sc_info.fb_width, sc->sc_info.fb_height,
	    sc->sc_info.fb_stride);
	printf("pbase == 0x%08x\n", sc->sc_info.fb_pbase);
#endif

	FUNC14((int8_t *)sc->sc_info.fb_vbase, 0x0, sc->sc_info.fb_size);

	FUNC11(sc);

	sc->sc_info.fb_name = FUNC6(dev);

	/* Ask newbus to attach framebuffer device to me. */
	sc->sc_fbd = FUNC5(dev, "fbd", FUNC8(dev));
	if (sc->sc_fbd == NULL)
		FUNC9(dev, "Can't attach fbd device\n");

	if (FUNC10(sc->sc_fbd) != 0) {
		FUNC9(sc->dev, "Failed to attach fbd device\n");
	}

	return (0);
}