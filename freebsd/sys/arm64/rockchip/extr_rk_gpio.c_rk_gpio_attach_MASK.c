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
struct rk_gpio_softc {int /*<<< orphan*/ * sc_busdev; int /*<<< orphan*/  clk; int /*<<< orphan*/ * sc_res; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct rk_gpio_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rk_gpio_spec ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct rk_gpio_softc *sc;
	phandle_t node;
	int err;

	sc = FUNC6(dev);
	sc->sc_dev = dev;

	node = FUNC11(sc->sc_dev);
	if (!FUNC0(node, "gpio-controller"))
		return (ENXIO);

	FUNC10(&sc->sc_mtx, "rk gpio", "gpio", MTX_SPIN);

	if (FUNC1(dev, rk_gpio_spec, sc->sc_res)) {
		FUNC7(dev, "could not allocate resources\n");
		FUNC2(dev, rk_gpio_spec, sc->sc_res);
		FUNC9(&sc->sc_mtx);
		return (ENXIO);
	}

	sc->sc_bst = FUNC14(sc->sc_res[0]);
	sc->sc_bsh = FUNC13(sc->sc_res[0]);

	if (FUNC4(dev, 0, 0, &sc->clk) != 0) {
		FUNC7(dev, "Cannot get clock\n");
		FUNC12(dev);
		return (ENXIO);
	}
	err = FUNC3(sc->clk);
	if (err != 0) {
		FUNC7(dev, "Could not enable clock %s\n",
		    FUNC5(sc->clk));
		FUNC12(dev);
		return (ENXIO);
	}

	sc->sc_busdev = FUNC8(dev);
	if (sc->sc_busdev == NULL) {
		FUNC12(dev);
		return (ENXIO);
	}

	return (0);
}