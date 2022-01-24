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
struct rk_i2c_softc {int /*<<< orphan*/ * iicbus; int /*<<< orphan*/ * sclk; int /*<<< orphan*/ * pclk; int /*<<< orphan*/ * res; int /*<<< orphan*/  intrhand; int /*<<< orphan*/  mtx; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rk_i2c_softc*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct rk_i2c_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rk_i2c_intr ; 
 int /*<<< orphan*/  rk_i2c_spec ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct rk_i2c_softc *sc;
	int error;

	sc = FUNC9(dev);
	sc->dev = dev;

	FUNC11(&sc->mtx, FUNC8(dev), "rk_i2c", MTX_DEF);

	if (FUNC0(dev, rk_i2c_spec, sc->res) != 0) {
		FUNC10(dev, "cannot allocate resources for device\n");
		error = ENXIO;
		goto fail;
	}

	if (FUNC3(dev, sc->res[1],
	    INTR_TYPE_MISC | INTR_MPSAFE, NULL, rk_i2c_intr, sc,
	    &sc->intrhand)) {
		FUNC2(dev, rk_i2c_spec, sc->res);
		FUNC10(dev, "cannot setup interrupt handler\n");
		return (ENXIO);
	}

	FUNC6(dev, FUNC12(dev));

	/* Activate the module clocks. */
	error = FUNC5(dev, 0, "i2c", &sc->sclk);
	if (error != 0) {
		FUNC10(dev, "cannot get i2c clock\n");
		goto fail;
	}
	error = FUNC4(sc->sclk);
	if (error != 0) {
		FUNC10(dev, "cannot enable i2c clock\n");
		goto fail;
	}
	/* pclk clock is optional. */
	error = FUNC5(dev, 0, "pclk", &sc->pclk);
	if (error != 0 && error != ENOENT) {
		FUNC10(dev, "cannot get pclk clock\n");
		goto fail;
	}
	if (sc->sclk != NULL) {
		error = FUNC4(sc->sclk);
		if (error != 0) {
			FUNC10(dev, "cannot enable pclk clock\n");
			goto fail;
		}
	}

	sc->iicbus = FUNC7(dev, "iicbus", -1);
	if (sc->iicbus == NULL) {
		FUNC10(dev, "cannot add iicbus child device\n");
		error = ENXIO;
		goto fail;
	}

	FUNC1(dev);

	return (0);

fail:
	if (FUNC13(dev) != 0)
		FUNC10(dev, "Failed to detach\n");
	return (error);
}