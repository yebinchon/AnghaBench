#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fpgamgr_softc {TYPE_1__* mgr_cdev; int /*<<< orphan*/  dev; int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh_data; int /*<<< orphan*/  bst_data; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct fpgamgr_softc* si_drv1; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fpgamgr_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fpga_cdevsw ; 
 int /*<<< orphan*/  fpgamgr_spec ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct fpgamgr_softc *sc;

	sc = FUNC1(dev);
	sc->dev = dev;

	if (FUNC0(dev, fpgamgr_spec, sc->res)) {
		FUNC3(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst_data = FUNC6(sc->res[1]);
	sc->bsh_data = FUNC5(sc->res[1]);

	sc->mgr_cdev = FUNC4(&fpga_cdevsw, 0, UID_ROOT, GID_WHEEL,
	    0600, "fpga%d", FUNC2(sc->dev));

	if (sc->mgr_cdev == NULL) {
		FUNC3(dev, "Failed to create character device.\n");
		return (ENXIO);
	}

	sc->mgr_cdev->si_drv1 = sc;

	return (0);
}