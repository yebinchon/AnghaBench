#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gic_v3_softc {int /*<<< orphan*/  gic_nchildren; } ;
struct TYPE_5__ {int /*<<< orphan*/  obd_name; } ;
struct TYPE_4__ {int gic_domain; } ;
struct gic_v3_ofw_devinfo {TYPE_2__ di_dinfo; int /*<<< orphan*/  di_rl; TYPE_1__ di_gic_dinfo; } ;
typedef  int /*<<< orphan*/  size_cells ;
typedef  scalar_t__ phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  addr_cells ;

/* Variables and functions */
 int /*<<< orphan*/  M_GIC_V3 ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*,int*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ bootverbose ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct gic_v3_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct gic_v3_ofw_devinfo*) ; 
 int /*<<< orphan*/  FUNC8 (struct gic_v3_ofw_devinfo*,int /*<<< orphan*/ ) ; 
 struct gic_v3_ofw_devinfo* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct gic_v3_ofw_devinfo *di;
	struct gic_v3_softc *sc;
	device_t child;
	phandle_t parent, node;
	pcell_t addr_cells, size_cells;

	sc = FUNC5(dev);
	parent = FUNC12(dev);
	if (parent > 0) {
		addr_cells = 2;
		FUNC1(parent, "#address-cells", &addr_cells,
		    sizeof(addr_cells));
		size_cells = 2;
		FUNC1(parent, "#size-cells", &size_cells,
		    sizeof(size_cells));
		/* Iterate through all GIC subordinates */
		for (node = FUNC0(parent); node > 0; node = FUNC2(node)) {
			/* Allocate and populate devinfo. */
			di = FUNC9(sizeof(*di), M_GIC_V3, M_WAITOK | M_ZERO);

			/* Read the numa node, or -1 if there is none */
			if (FUNC1(node, "numa-node-id",
			    &di->di_gic_dinfo.gic_domain,
			    sizeof(di->di_gic_dinfo.gic_domain)) <= 0) {
				di->di_gic_dinfo.gic_domain = -1;
			}

			if (FUNC11(&di->di_dinfo, node)) {
				if (bootverbose) {
					FUNC6(dev,
					    "Could not set up devinfo for ITS\n");
				}
				FUNC8(di, M_GIC_V3);
				continue;
			}

			/* Initialize and populate resource list. */
			FUNC15(&di->di_rl);
			FUNC13(dev, node, addr_cells, size_cells,
			    &di->di_rl);

			/* Should not have any interrupts, so don't add any */

			/* Add newbus device for this FDT node */
			child = FUNC4(dev, NULL, -1);
			if (!child) {
				if (bootverbose) {
					FUNC6(dev,
					    "Could not add child: %s\n",
					    di->di_dinfo.obd_name);
				}
				FUNC14(&di->di_rl);
				FUNC10(&di->di_dinfo);
				FUNC8(di, M_GIC_V3);
				continue;
			}

			sc->gic_nchildren++;
			FUNC7(child, di);
		}
	}

	return (FUNC3(dev));
}