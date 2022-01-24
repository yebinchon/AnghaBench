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
struct rk_spi_softc {int fifo_size; int /*<<< orphan*/  spibus; int /*<<< orphan*/  max_freq; int /*<<< orphan*/  clk_spi; int /*<<< orphan*/  clk_apb; int /*<<< orphan*/ * res; int /*<<< orphan*/  intrhand; int /*<<< orphan*/  mtx; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  RK_SPI_IMR ; 
 int /*<<< orphan*/  RK_SPI_RXFTLR ; 
 int /*<<< orphan*/  RK_SPI_TXFTLR ; 
 int /*<<< orphan*/  FUNC0 (struct rk_spi_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rk_spi_softc*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct rk_spi_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct rk_spi_softc*) ; 
 int /*<<< orphan*/  rk_spi_intr ; 
 int /*<<< orphan*/  rk_spi_spec ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct rk_spi_softc *sc;
	int error;

	sc = FUNC10(dev);
	sc->dev = dev;

	FUNC12(&sc->mtx, FUNC9(dev), NULL, MTX_DEF);

	if (FUNC1(dev, rk_spi_spec, sc->res) != 0) {
		FUNC11(dev, "cannot allocate resources for device\n");
		error = ENXIO;
		goto fail;
	}

	if (FUNC4(dev, sc->res[1],
	    INTR_TYPE_MISC | INTR_MPSAFE, NULL, rk_spi_intr, sc,
	    &sc->intrhand)) {
		FUNC3(dev, rk_spi_spec, sc->res);
		FUNC11(dev, "cannot setup interrupt handler\n");
		return (ENXIO);
	}

	/* Activate the module clock. */
	error = FUNC6(dev, 0, "apb_pclk", &sc->clk_apb);
	if (error != 0) {
		FUNC11(dev, "cannot get apb_pclk clock\n");
		goto fail;
	}
	error = FUNC6(dev, 0, "spiclk", &sc->clk_spi);
	if (error != 0) {
		FUNC11(dev, "cannot get spiclk clock\n");
		goto fail;
	}
	error = FUNC5(sc->clk_apb);
	if (error != 0) {
		FUNC11(dev, "cannot enable ahb clock\n");
		goto fail;
	}
	error = FUNC5(sc->clk_spi);
	if (error != 0) {
		FUNC11(dev, "cannot enable spiclk clock\n");
		goto fail;
	}
	FUNC7(sc->clk_spi, &sc->max_freq);

	sc->fifo_size = FUNC14(sc);
	if (sc->fifo_size == 0) {
		FUNC11(dev, "failed to get fifo size\n");
		goto fail;
	}

	sc->spibus = FUNC8(dev, "spibus", -1);

	FUNC0(sc, RK_SPI_IMR, 0);
	FUNC0(sc, RK_SPI_TXFTLR, sc->fifo_size/2 - 1);
	FUNC0(sc, RK_SPI_RXFTLR, sc->fifo_size/2 - 1);

	return (FUNC2(dev));

fail:
	FUNC13(dev);
	return (error);
}