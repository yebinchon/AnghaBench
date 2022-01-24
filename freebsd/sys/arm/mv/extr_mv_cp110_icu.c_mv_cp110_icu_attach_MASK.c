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
struct mv_cp110_icu_softc {int /*<<< orphan*/  res; struct intr_map_data_fdt* parent_map_data; int /*<<< orphan*/ * parent; int /*<<< orphan*/  dev; } ;
struct intr_map_data_fdt {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR_MAP_DATA_FDT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mv_cp110_icu_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mv_cp110_icu_res_spec ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct mv_cp110_icu_softc *sc;
	phandle_t node, msi_parent;

	sc = FUNC5(dev);
	sc->dev = dev;
	node = FUNC9(dev);

	if (FUNC1(node, "msi-parent", &msi_parent,
	    sizeof(phandle_t)) <= 0) {
		FUNC6(dev, "cannot find msi-parent property\n");
		return (ENXIO);
	}

	if ((sc->parent = FUNC0(msi_parent)) == NULL) {
		FUNC6(dev, "cannot find msi-parent device\n");
		return (ENXIO);
	}
	if (FUNC3(dev, mv_cp110_icu_res_spec, &sc->res) != 0) {
		FUNC6(dev, "cannot allocate resources for device\n");
		return (ENXIO);
	}

	if (FUNC8(dev, FUNC2(node)) == NULL) {
		FUNC6(dev, "Cannot register ICU\n");
		goto fail;
	}

	/* Allocate GICP compatible mapping entry (2 cells) */
	sc->parent_map_data = (struct intr_map_data_fdt *)FUNC7(
	    INTR_MAP_DATA_FDT, sizeof(struct intr_map_data_fdt) +
	    + 3 * sizeof(phandle_t), M_WAITOK | M_ZERO);
	return (0);

fail:
	FUNC4(dev, mv_cp110_icu_res_spec, &sc->res);
	return (ENXIO);
}