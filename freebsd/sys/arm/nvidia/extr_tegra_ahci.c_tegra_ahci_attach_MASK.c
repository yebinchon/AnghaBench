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
struct ahci_controller {int r_rid; int numirqs; int /*<<< orphan*/ * r_mem; scalar_t__ ccc; scalar_t__ msi; } ;
struct tegra_ahci_sc {int /*<<< orphan*/ * sata_mem; int /*<<< orphan*/  dev; struct ahci_controller ctlr; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct tegra_ahci_sc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct tegra_ahci_sc*) ; 
 int FUNC6 (struct tegra_ahci_sc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct tegra_ahci_sc*) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct tegra_ahci_sc *sc;
	struct ahci_controller *ctlr;
	phandle_t node;
	int rv, rid;

	sc = FUNC3(dev);
	sc->dev = dev;
	ctlr = &sc->ctlr;
	node = FUNC7(dev);

	ctlr->r_rid = 0;
	ctlr->r_mem = FUNC1(dev, SYS_RES_MEMORY,
	    &ctlr->r_rid, RF_ACTIVE);
	if (ctlr->r_mem == NULL)
		return (ENXIO);

	rid = 1;
	sc->sata_mem = FUNC1(dev, SYS_RES_MEMORY,
	    &rid, RF_ACTIVE);
	if (sc->sata_mem == NULL) {
		rv = ENXIO;
		goto fail;
	}
	rv = FUNC6(sc, node);
	if (rv != 0) {
		FUNC4(sc->dev, "Failed to allocate FDT resource(s)\n");
		goto fail;
	}

	rv = FUNC5(sc);
	if (rv != 0) {
		FUNC4(sc->dev, "Failed to enable FDT resource(s)\n");
		goto fail;
	}
	rv = FUNC9(sc);
	if (rv != 0) {
		FUNC4(sc->dev, "Failed to initialize controller)\n");
		goto fail;
	}

	/* Setup controller defaults. */
	ctlr->msi = 0;
	ctlr->numirqs = 1;
	ctlr->ccc = 0;

	/* Reset controller. */
	rv = FUNC8(dev);
	if (rv != 0)
		goto fail;
	rv = FUNC0(dev);
	return (rv);

fail:
	/* XXX FDT  stuff */
	if (sc->sata_mem != NULL)
		FUNC2(dev, SYS_RES_MEMORY, 1, sc->sata_mem);
	if (ctlr->r_mem != NULL)
		FUNC2(dev, SYS_RES_MEMORY, ctlr->r_rid,
		    ctlr->r_mem);
	return (rv);
}