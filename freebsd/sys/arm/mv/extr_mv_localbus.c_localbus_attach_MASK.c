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
struct localbus_softc {int /*<<< orphan*/  sc_banks; int /*<<< orphan*/ * sc_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  obd_name; } ;
struct localbus_devinfo {TYPE_1__ di_ofw; int /*<<< orphan*/  di_res; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_LOCALBUS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct localbus_softc* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct localbus_devinfo*) ; 
 scalar_t__ FUNC7 (scalar_t__,struct localbus_softc*,struct localbus_devinfo*) ; 
 int /*<<< orphan*/  FUNC8 (struct localbus_devinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  localbus_banks ; 
 struct localbus_devinfo* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	device_t dev_child;
	struct localbus_softc *sc;
	struct localbus_devinfo *di;
	phandle_t dt_node, dt_child;

	sc = FUNC4(dev);
	sc->sc_dev = dev;
	sc->sc_banks = localbus_banks;

	/*
	 * Walk localbus and add direct subordinates as our children.
	 */
	dt_node = FUNC13(dev);
	for (dt_child = FUNC0(dt_node); dt_child != 0;
	    dt_child = FUNC1(dt_child)) {

		/* Check and process 'status' property. */
		if (!(FUNC14(dt_child)))
			continue;

		if (!(FUNC10(dt_child)))
			continue;

		di = FUNC9(sizeof(*di), M_LOCALBUS, M_WAITOK | M_ZERO);
		if (FUNC12(&di->di_ofw, dt_child) != 0) {
			FUNC8(di, M_LOCALBUS);
			FUNC5(dev, "could not set up devinfo\n");
			continue;
		}

		FUNC16(&di->di_res);
		if (FUNC7(dt_child, sc, di)) {
			FUNC5(dev, "could not process 'reg' "
			    "property\n");
			FUNC11(&di->di_ofw);
			FUNC8(di, M_LOCALBUS);
			continue;
		}

		/* Add newbus device for this FDT node */
		dev_child = FUNC3(dev, NULL, -1);
		if (dev_child == NULL) {
			FUNC5(dev, "could not add child: %s\n",
			    di->di_ofw.obd_name);
			FUNC15(&di->di_res);
			FUNC11(&di->di_ofw);
			FUNC8(di, M_LOCALBUS);
			continue;
		}
#ifdef DEBUG
		device_printf(dev, "added child: %s\n\n", di->di_ofw.obd_name);
#endif
		FUNC6(dev_child, di);
	}

	return (FUNC2(dev));
}