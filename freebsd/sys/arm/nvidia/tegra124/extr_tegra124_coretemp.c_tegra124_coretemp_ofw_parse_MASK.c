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
struct tegra124_coretemp_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/ * tsens_dev; scalar_t__ cpu_id; scalar_t__ tsens_id; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (scalar_t__,char*) ; 
 int FUNC5 (scalar_t__,char*,char*,int /*<<< orphan*/ ,scalar_t__*,int*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC6(struct tegra124_coretemp_softc *sc)
{
	int rv, ncells;
	phandle_t node, xnode;
	pcell_t *cells;

	node = FUNC1(0);
	node = FUNC4(node, "thermal-zones");
	if (node <= 0) {
		FUNC3(sc->dev, "Cannot find 'thermal-zones'.\n");
		return (ENXIO);
	}

	node = FUNC4(node, "cpu");
	if (node <= 0) {
		FUNC3(sc->dev, "Cannot find 'cpu'\n");
		return (ENXIO);
	}
	rv = FUNC5(node, "thermal-sensors",
	    "#thermal-sensor-cells", 0, &xnode, &ncells, &cells);
	if (rv != 0) {
		FUNC3(sc->dev,
		    "Cannot parse 'thermal-sensors' property.\n");
		return (ENXIO);
	}
	if (ncells != 1) {
		FUNC3(sc->dev,
		    "Invalid format of 'thermal-sensors' property(%d).\n",
		    ncells);
		return (ENXIO);
	}

	sc->tsens_id = 0x100 + sc->cpu_id; //cells[0];
	FUNC2(cells);

	sc->tsens_dev = FUNC0(xnode);
	if (sc->tsens_dev == NULL) {
		FUNC3(sc->dev,
		    "Cannot find thermal sensors device.");
		return (ENXIO);
	}
	return (0);
}