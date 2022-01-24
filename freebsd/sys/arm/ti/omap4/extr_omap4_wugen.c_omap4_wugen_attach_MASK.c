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
struct omap4_wugen_sc {int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/ * sc_parent; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  parent_xref ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct omap4_wugen_sc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct omap4_wugen_sc *sc;
	phandle_t node;
	phandle_t parent_xref;
	int rid, rv;

	sc = FUNC4(dev);
	sc->sc_dev = dev;
	node = FUNC7(dev);

	rv = FUNC1(node, "interrupt-parent", &parent_xref,
	    sizeof(parent_xref));
	if (rv <= 0) {
		FUNC5(dev, "can't read parent node property\n");
		goto fail;
	}
	sc->sc_parent = FUNC0(parent_xref);
	if (sc->sc_parent == NULL) {
		FUNC5(dev, "can't find parent controller\n");
		goto fail;
	}

	rid = 0;
	sc->sc_mem_res = FUNC3(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->sc_mem_res == NULL) {
		FUNC5(dev, "can't allocate resources\n");
		return (ENXIO);
	}

	if (FUNC6(dev, FUNC2(node)) == NULL) {
		FUNC5(dev, "can't register PIC\n");
		goto fail;
	}
	return (0);

fail:
	FUNC8(dev);
	return (ENXIO);
}