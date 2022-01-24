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
struct aw_spi_softc {int /*<<< orphan*/  spibus; int /*<<< orphan*/  clk_mod; int /*<<< orphan*/  clk_ahb; int /*<<< orphan*/  rst_ahb; int /*<<< orphan*/ * res; int /*<<< orphan*/  intrhand; int /*<<< orphan*/  mtx; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aw_spi_intr ; 
 int /*<<< orphan*/  aw_spi_spec ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct aw_spi_softc*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct aw_spi_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct aw_spi_softc *sc;
	int error;

	sc = FUNC8(dev);
	sc->dev = dev;

	FUNC12(&sc->mtx, FUNC7(dev), NULL, MTX_DEF);

	if (FUNC1(dev, aw_spi_spec, sc->res) != 0) {
		FUNC9(dev, "cannot allocate resources for device\n");
		error = ENXIO;
		goto fail;
	}

	if (FUNC3(dev, sc->res[1],
	    INTR_TYPE_MISC | INTR_MPSAFE, NULL, aw_spi_intr, sc,
	    &sc->intrhand)) {
		FUNC2(dev, aw_spi_spec, sc->res);
		FUNC9(dev, "cannot setup interrupt handler\n");
		return (ENXIO);
	}

	/* De-assert reset */
	if (FUNC11(dev, 0, 0, &sc->rst_ahb) == 0) {
		error = FUNC10(sc->rst_ahb);
		if (error != 0) {
			FUNC9(dev, "cannot de-assert reset\n");
			goto fail;
		}
	}

	/* Activate the module clock. */
	error = FUNC5(dev, 0, "ahb", &sc->clk_ahb);
	if (error != 0) {
		FUNC9(dev, "cannot get ahb clock\n");
		goto fail;
	}
	error = FUNC5(dev, 0, "mod", &sc->clk_mod);
	if (error != 0) {
		FUNC9(dev, "cannot get mod clock\n");
		goto fail;
	}
	error = FUNC4(sc->clk_ahb);
	if (error != 0) {
		FUNC9(dev, "cannot enable ahb clock\n");
		goto fail;
	}
	error = FUNC4(sc->clk_mod);
	if (error != 0) {
		FUNC9(dev, "cannot enable mod clock\n");
		goto fail;
	}

	sc->spibus = FUNC6(dev, "spibus", -1);

	return (0);

fail:
	FUNC0(dev);
	return (error);
}