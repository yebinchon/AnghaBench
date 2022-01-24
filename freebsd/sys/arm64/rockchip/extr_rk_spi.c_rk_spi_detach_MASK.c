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
struct rk_spi_softc {int /*<<< orphan*/  mtx; int /*<<< orphan*/ * res; int /*<<< orphan*/ * intrhand; int /*<<< orphan*/  dev; int /*<<< orphan*/ * clk_apb; int /*<<< orphan*/ * clk_spi; int /*<<< orphan*/ * spibus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct rk_spi_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rk_spi_spec ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct rk_spi_softc *sc;

	sc = FUNC5(dev);

	FUNC0(sc->dev);
	if (sc->spibus != NULL)
		FUNC4(dev, sc->spibus);

	if (sc->clk_spi != NULL)
		FUNC3(sc->clk_spi);
	if (sc->clk_apb)
		FUNC3(sc->clk_apb);

	if (sc->intrhand != NULL)
		FUNC2(sc->dev, sc->res[1], sc->intrhand);

	FUNC1(dev, rk_spi_spec, sc->res);
	FUNC6(&sc->mtx);

	return (0);
}