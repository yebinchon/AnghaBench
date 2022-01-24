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
struct tegra_lic_sc {int /*<<< orphan*/ ** mem_res; int /*<<< orphan*/ * parent; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  parent_xref ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  LIC_CPU_IEP_CLASS ; 
 int /*<<< orphan*/  LIC_CPU_IER_CLR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_lic_sc*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 struct tegra_lic_sc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lic_spec ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct tegra_lic_sc *sc;
	phandle_t node;
	phandle_t parent_xref;
	int i, rv;

	sc = FUNC6(dev);
	sc->dev = dev;
	node = FUNC10(dev);

	rv = FUNC1(node, "interrupt-parent", &parent_xref,
	    sizeof(parent_xref));
	if (rv <= 0) {
		FUNC7(dev, "Cannot read parent node property\n");
		goto fail;
	}
	sc->parent = FUNC0(parent_xref);
	if (sc->parent == NULL) {
		FUNC7(dev, "Cannott find parent controller\n");
		goto fail;
	}

	if (FUNC4(dev, lic_spec, sc->mem_res)) {
		FUNC7(dev, "Cannott allocate resources\n");
		goto fail;
	}

	/* Disable all interrupts, route all to irq */
	for (i = 0; i < FUNC9(lic_spec); i++) {
		if (sc->mem_res[i] == NULL)
			continue;
		FUNC3(sc, i, LIC_CPU_IER_CLR, 0xFFFFFFFF);
		FUNC3(sc, i, LIC_CPU_IEP_CLASS, 0);
	}


	if (FUNC8(dev, FUNC2(node)) == NULL) {
		FUNC7(dev, "Cannot register PIC\n");
		goto fail;
	}
	return (0);

fail:
	FUNC5(dev, lic_spec, sc->mem_res);
	return (ENXIO);
}