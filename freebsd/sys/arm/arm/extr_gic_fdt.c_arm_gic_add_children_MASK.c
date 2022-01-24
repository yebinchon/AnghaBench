#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct arm_gic_fdt_softc {int /*<<< orphan*/  size_cells; int /*<<< orphan*/  addr_cells; } ;
struct TYPE_3__ {int /*<<< orphan*/  obd_name; } ;
struct arm_gic_devinfo {TYPE_1__ obdinfo; int /*<<< orphan*/  rl; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,struct arm_gic_fdt_softc*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct arm_gic_fdt_softc* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct arm_gic_devinfo*) ; 
 int /*<<< orphan*/  FUNC7 (struct arm_gic_devinfo*,int /*<<< orphan*/ ) ; 
 struct arm_gic_devinfo* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC15(device_t dev)
{
	struct arm_gic_fdt_softc *sc;
	struct arm_gic_devinfo *dinfo;
	phandle_t child, node;
	device_t cdev;

	sc = FUNC4(dev);
	node = FUNC11(dev);

	/* If we have no children don't probe for them */
	child = FUNC0(node);
	if (child == 0)
		return (false);

	if (FUNC2(node, sc) < 0) {
		FUNC5(dev, "Have a child, but no ranges\n");
		return (false);
	}

	for (; child != 0; child = FUNC1(child)) {
		dinfo = FUNC8(sizeof(*dinfo), M_DEVBUF, M_WAITOK | M_ZERO);

		if (FUNC10(&dinfo->obdinfo, child) != 0) {
			FUNC7(dinfo, M_DEVBUF);
			continue;
		}

		FUNC14(&dinfo->rl);
		FUNC12(dev, child, sc->addr_cells,
		    sc->size_cells, &dinfo->rl);

		cdev = FUNC3(dev, NULL, -1);
		if (cdev == NULL) {
			FUNC5(dev, "<%s>: device_add_child failed\n",
			    dinfo->obdinfo.obd_name);
			FUNC13(&dinfo->rl);
			FUNC9(&dinfo->obdinfo);
			FUNC7(dinfo, M_DEVBUF);
			continue;
		}
		FUNC6(cdev, dinfo);
	}

	return (true);
}