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
struct mv_ap806_gicp_softc {struct intr_map_data_fdt* parent_map_data; int /*<<< orphan*/  spi_ranges; int /*<<< orphan*/  spi_ranges_cnt; int /*<<< orphan*/ * parent; int /*<<< orphan*/  dev; } ;
struct intr_map_data_fdt {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR_MAP_DATA_FDT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mv_ap806_gicp_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct mv_ap806_gicp_softc *sc;
	phandle_t node, xref, intr_parent;

	sc = FUNC4(dev);
	sc->dev = dev;
	node = FUNC9(dev);

	/* Look for our parent */
	if ((intr_parent = FUNC8(node)) == 0) {
		FUNC5(dev,
		     "Cannot find our parent interrupt controller\n");
		return (ENXIO);
	}
	if ((sc->parent = FUNC0(intr_parent)) == NULL) {
		FUNC5(dev,
		     "cannot find parent interrupt controller device\n");
		return (ENXIO);
	}

	sc->spi_ranges_cnt = FUNC2(node, "marvell,spi-ranges",
	    (void **)&sc->spi_ranges);

	xref = FUNC3(node);
	if (FUNC7(dev, xref) == NULL) {
		FUNC5(dev, "Cannot register GICP\n");
		return (ENXIO);
	}
	/* Allocate GIC compatible mapping entry (3 cells) */
	sc->parent_map_data = (struct intr_map_data_fdt *)FUNC6(
	    INTR_MAP_DATA_FDT, sizeof(struct intr_map_data_fdt) +
	    + 3 * sizeof(phandle_t), M_WAITOK | M_ZERO);
	FUNC1(xref, dev);

	return (0);
}