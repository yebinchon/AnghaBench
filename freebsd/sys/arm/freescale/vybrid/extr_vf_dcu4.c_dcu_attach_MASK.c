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
struct panel_info {int width; int height; int /*<<< orphan*/  backlight_pin; } ;
struct TYPE_2__ {int fb_width; int fb_height; int fb_stride; int fb_bpp; int fb_depth; int fb_size; intptr_t fb_vbase; intptr_t fb_pbase; int /*<<< orphan*/  fb_name; } ;
struct dcu_softc {int /*<<< orphan*/ * dev; int /*<<< orphan*/ * sc_fbd; TYPE_1__ sc_info; struct panel_info* panel; int /*<<< orphan*/  ih; int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GPIO_PIN_HIGH ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dcu_softc*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dcu_softc*) ; 
 int /*<<< orphan*/  dcu_intr ; 
 int /*<<< orphan*/  dcu_spec ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct dcu_softc* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct dcu_softc*,struct panel_info*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,intptr_t,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 scalar_t__ FUNC20 (intptr_t) ; 

__attribute__((used)) static int
FUNC21(device_t dev)
{
	struct panel_info panel;
	struct dcu_softc *sc;
	device_t gpio_dev;
	int err;

	sc = FUNC10(dev);
	sc->dev = dev;

	if (FUNC2(dev, dcu_spec, sc->res)) {
		FUNC12(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC18(sc->res[0]);
	sc->bsh = FUNC17(sc->res[0]);

	/* Setup interrupt handler */
	err = FUNC3(dev, sc->res[1], INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, dcu_intr, sc, &sc->ih);
	if (err) {
		FUNC12(dev, "Unable to alloc interrupt resource.\n");
		return (ENXIO);
	}

	if (FUNC14(sc, &panel)) {
		FUNC12(dev, "Can't get panel info\n");
		return (ENXIO);
	}

	sc->panel = &panel;

	/* Bypass timing control (used for raw lcd panels) */
	FUNC19();

	/* Get the GPIO device, we need this to give power to USB */
	gpio_dev = FUNC7(FUNC6("gpio"), 0);
	if (gpio_dev == NULL) {
		FUNC12(sc->dev, "Error: failed to get the GPIO dev\n");
		return (1);
	}

	/* Turn on backlight */
	/* TODO: Use FlexTimer/PWM */
	FUNC1(gpio_dev, panel.backlight_pin, GPIO_PIN_OUTPUT);
	FUNC0(gpio_dev, panel.backlight_pin, GPIO_PIN_HIGH);

	sc->sc_info.fb_width = panel.width;
	sc->sc_info.fb_height = panel.height;
	sc->sc_info.fb_stride = sc->sc_info.fb_width * 3;
	sc->sc_info.fb_bpp = sc->sc_info.fb_depth = 24;
	sc->sc_info.fb_size = sc->sc_info.fb_height * sc->sc_info.fb_stride;
	sc->sc_info.fb_vbase = (intptr_t)FUNC4(sc->sc_info.fb_size,
	    M_DEVBUF, M_ZERO, 0, ~0, PAGE_SIZE, 0);
	sc->sc_info.fb_pbase = (intptr_t)FUNC20(sc->sc_info.fb_vbase);

#if 0
	printf("%dx%d [%d]\n", sc->sc_info.fb_width, sc->sc_info.fb_height,
	    sc->sc_info.fb_stride);
	printf("pbase == 0x%08x\n", sc->sc_info.fb_pbase);
#endif

	FUNC15((int8_t *)sc->sc_info.fb_vbase, 0x0, sc->sc_info.fb_size);

	FUNC5(sc);

	sc->sc_info.fb_name = FUNC9(dev);

	/* Ask newbus to attach framebuffer device to me. */
	sc->sc_fbd = FUNC8(dev, "fbd", FUNC11(dev));
	if (sc->sc_fbd == NULL)
		FUNC12(dev, "Can't attach fbd device\n");

	if (FUNC13(sc->sc_fbd) != 0) {
		FUNC12(sc->dev, "Failed to attach fbd device\n");
	}

	return (0);
}