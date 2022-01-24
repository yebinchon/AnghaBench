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
struct aw_spi_softc {int /*<<< orphan*/  mtx; int /*<<< orphan*/ * res; int /*<<< orphan*/ * intrhand; int /*<<< orphan*/  dev; scalar_t__ rst_ahb; int /*<<< orphan*/ * clk_ahb; int /*<<< orphan*/ * clk_mod; int /*<<< orphan*/ * spibus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  aw_spi_spec ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct aw_spi_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct aw_spi_softc *sc;

	sc = FUNC5(dev);

	FUNC0(sc->dev);
	if (sc->spibus != NULL)
		FUNC4(dev, sc->spibus);

	if (sc->clk_mod != NULL)
		FUNC3(sc->clk_mod);
	if (sc->clk_ahb)
		FUNC3(sc->clk_ahb);
	if (sc->rst_ahb)
		FUNC6(sc->rst_ahb);

	if (sc->intrhand != NULL)
		FUNC2(sc->dev, sc->res[1], sc->intrhand);

	FUNC1(dev, aw_spi_spec, sc->res);
	FUNC7(&sc->mtx);

	return (0);
}