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
struct TYPE_2__ {int fb_width; int fb_height; int fb_depth; int fb_bpp; int fb_stride; int fb_pbase; int fb_size; intptr_t fb_vbase; int /*<<< orphan*/  fb_name; } ;
struct aml8726_fb_softc {TYPE_1__ info; int /*<<< orphan*/ * res; scalar_t__ ih_cookie; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  prop ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aml8726_fb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_fb_softc*) ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aml8726_fb_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct aml8726_fb_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct aml8726_fb_softc*) ; 
 int /*<<< orphan*/  aml8726_fb_intr ; 
 int /*<<< orphan*/  aml8726_fb_spec ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct aml8726_fb_softc*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct aml8726_fb_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (intptr_t,int) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct aml8726_fb_softc *sc = FUNC12(dev);
	int error;
	device_t child;
	pcell_t prop;
	phandle_t node;

	sc->dev = dev;

	sc->info.fb_name = FUNC11(sc->dev);

	node = FUNC16(dev);

	if (FUNC2(node, "width", &prop, sizeof(prop)) <= 0) {
		FUNC14(dev, "missing width attribute in FDT\n");
		return (ENXIO);
	}
	if ((prop % 8) != 0) {
		FUNC14(dev,
		    "width attribute in FDT must be a multiple of 8\n");
		return (ENXIO);
	}
	sc->info.fb_width = prop;

	if (FUNC2(node, "height", &prop, sizeof(prop)) <= 0) {
		FUNC14(dev, "missing height attribute in FDT\n");
		return (ENXIO);
	}
	sc->info.fb_height = prop;

	if (FUNC2(node, "depth", &prop, sizeof(prop)) <= 0) {
		FUNC14(dev, "missing depth attribute in FDT\n");
		return (ENXIO);
	}
	if (prop != 24) {
		FUNC14(dev,
		    "depth attribute in FDT is an unsupported value\n");
		return (ENXIO);
	}
	sc->info.fb_depth = prop;
	sc->info.fb_bpp = prop;

	if (FUNC2(node, "linebytes", &prop, sizeof(prop)) <= 0) {
		FUNC14(dev, "missing linebytes attribute in FDT\n");
		return (ENXIO);
	}
	if ((prop % 8) != 0) {
		FUNC14(dev,
		    "linebytes attribute in FDT must be a multiple of 8\n");
		return (ENXIO);
	}
	if (prop < (sc->info.fb_width * 3)) {
		FUNC14(dev,
		    "linebytes attribute in FDT is too small\n");
		return (ENXIO);
	}
	sc->info.fb_stride = prop;

	if (FUNC2(node, "address", &prop, sizeof(prop)) <= 0) {
		FUNC14(dev, "missing address attribute in FDT\n");
		return (ENXIO);
	}
	if ((prop % 8) != 0) {
		FUNC14(dev,
		    "address attribute in FDT must be a multiple of 8\n");
		return (ENXIO);
	}
	sc->info.fb_pbase = prop;
	sc->info.fb_size = sc->info.fb_height * sc->info.fb_stride;
	sc->info.fb_vbase = (intptr_t)FUNC17(sc->info.fb_pbase,
	    sc->info.fb_size);

	if (FUNC6(dev, aml8726_fb_spec, sc->res)) {
		FUNC14(dev, "could not allocate resources for device\n");
		FUNC18(sc->info.fb_vbase, sc->info.fb_size);
		return (ENXIO);
	}

	FUNC4(sc);

	FUNC5(sc);

	FUNC3(sc);

	FUNC1(sc);

	error = FUNC8(dev, sc->res[3], INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, aml8726_fb_intr, sc, &sc->ih_cookie);

	if (error) {
		FUNC14(dev, "could not setup interrupt handler\n");
		goto fail;
	}

	child = FUNC10(dev, "fbd", FUNC13(dev));

	if (!child) {
		FUNC14(dev, "could not add fbd\n");
		error = ENXIO;
		goto fail;
	}

	error = FUNC15(child);

	if (error) {
		FUNC14(dev, "could not attach fbd\n");
		goto fail;
	}

	return (0);

fail:
	if (sc->ih_cookie)
		FUNC9(dev, sc->res[3], sc->ih_cookie);

	FUNC0(sc);

	FUNC7(dev, aml8726_fb_spec, sc->res);

	FUNC18(sc->info.fb_vbase, sc->info.fb_size);

	return (error);
}