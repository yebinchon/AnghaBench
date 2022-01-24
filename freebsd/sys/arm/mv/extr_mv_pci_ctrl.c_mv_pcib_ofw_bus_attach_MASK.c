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
struct mv_pcib_ctrl_softc {int addr_cells; int size_cells; } ;
struct TYPE_5__ {int /*<<< orphan*/  obd_name; } ;
struct mv_pcib_ctrl_devinfo {int /*<<< orphan*/  di_rl; TYPE_2__ di_dinfo; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  (* get_rl_t ) (int /*<<< orphan*/ *,scalar_t__,int,int,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_4__ {scalar_t__ ocd_data; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  M_PCIB_CTRL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*,int*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct mv_pcib_ctrl_softc* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mv_pcib_ctrl_devinfo*) ; 
 int /*<<< orphan*/  FUNC7 (struct mv_pcib_ctrl_devinfo*,int /*<<< orphan*/ ) ; 
 struct mv_pcib_ctrl_devinfo* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mv_pcib_ctrl_compat ; 
 scalar_t__ FUNC9 (scalar_t__,struct mv_pcib_ctrl_softc*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct mv_pcib_ctrl_devinfo *di;
	struct mv_pcib_ctrl_softc *sc;
	device_t child;
	phandle_t parent, node;
	get_rl_t get_rl;

	parent = FUNC12(dev);
	sc = FUNC4(dev);
	if (parent > 0) {
		sc->addr_cells = 1;
		if (FUNC1(parent, "#address-cells", &(sc->addr_cells),
		    sizeof(sc->addr_cells)) <= 0)
			return(ENXIO);

		sc->size_cells = 1;
		if (FUNC1(parent, "#size-cells", &(sc->size_cells),
		    sizeof(sc->size_cells)) <= 0)
			return(ENXIO);

		for (node = FUNC0(parent); node > 0; node = FUNC2(node)) {
			di = FUNC8(sizeof(*di), M_PCIB_CTRL, M_WAITOK | M_ZERO);
			if (FUNC11(&di->di_dinfo, node)) {
				if (bootverbose) {
					FUNC5(dev,
					    "Could not set up devinfo for PCI\n");
				}
				FUNC7(di, M_PCIB_CTRL);
				continue;
			}

			child = FUNC3(dev, NULL, -1);
			if (child == NULL) {
				if (bootverbose) {
					FUNC5(dev,
					    "Could not add child: %s\n",
					    di->di_dinfo.obd_name);
				}
				FUNC10(&di->di_dinfo);
				FUNC7(di, M_PCIB_CTRL);
				continue;
			}

			FUNC14(&di->di_rl);
			get_rl = (get_rl_t) FUNC13(dev,
			    mv_pcib_ctrl_compat)->ocd_data;
			if (get_rl != NULL)
				get_rl(child, node, sc->addr_cells,
				    sc->size_cells, &di->di_rl);

			FUNC6(child, di);
		}
	}

	if (FUNC9(parent, sc) < 0) {
		FUNC5(dev, "could not get ranges\n");
		return (ENXIO);
	}

	return (0);
}