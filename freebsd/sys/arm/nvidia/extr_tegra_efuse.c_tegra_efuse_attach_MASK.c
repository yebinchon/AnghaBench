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
struct tegra_efuse_softc {int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * reset; int /*<<< orphan*/ * clk; int /*<<< orphan*/  fuse_begin; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TEGRA124_FUSE_BEGIN ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct tegra_efuse_softc* dev_sc ; 
 struct tegra_efuse_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tegra_efuse_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  tegra_sku_info ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	int rv, rid;
	phandle_t node;
	struct tegra_efuse_softc *sc;

	sc = FUNC6(dev);
	sc->dev = dev;
	node = FUNC11(dev);

	/* Get the memory resource for the register mapping. */
	rid = 0;
	sc->mem_res = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC7(dev, "Cannot map registers.\n");
		rv = ENXIO;
		goto fail;
	}

	/* OFW resources. */
	rv = FUNC4(dev, 0, "fuse", &sc->clk);
	if (rv != 0) {
		FUNC7(dev, "Cannot get fuse clock: %d\n", rv);
		goto fail;
	}
	rv = FUNC3(sc->clk);
	if (rv != 0) {
		FUNC7(dev, "Cannot enable clock: %d\n", rv);
		goto fail;
	}
	rv = FUNC9(sc->dev, 0, "fuse", &sc->reset);
	if (rv != 0) {
		FUNC7(dev, "Cannot get fuse reset\n");
		goto fail;
	}
	rv = FUNC8(sc->reset);
	if (rv != 0) {
		FUNC7(sc->dev, "Cannot clear reset\n");
		goto fail;
	}

	/* Tegra124 specific init. */
	sc->fuse_begin = TEGRA124_FUSE_BEGIN;
	FUNC12(sc, &tegra_sku_info);

	dev_sc = sc;

	if (bootverbose)
		FUNC13();
	return (FUNC1(dev));

fail:
	dev_sc = NULL;
	if (sc->clk != NULL)
		FUNC5(sc->clk);
	if (sc->reset != NULL)
		FUNC10(sc->reset);
	if (sc->mem_res != NULL)
		FUNC2(dev, SYS_RES_MEMORY, 0, sc->mem_res);

	return (rv);
}