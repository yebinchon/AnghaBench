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
struct aw_ccu_softc {int /*<<< orphan*/  mtx; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_2__ {int /*<<< orphan*/  ocd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCU_BASE ; 
 int /*<<< orphan*/  CCU_SIZE ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 TYPE_1__* FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct aw_ccu_softc* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct aw_ccu_softc *sc;
	phandle_t node, child;
	device_t cdev;
	int error;

	sc = FUNC7(dev);
	node = FUNC11(dev);

	FUNC13(dev, node);

	sc->flags = FUNC2()->ocd_data;

	/*
	 * Map registers. The DT doesn't have a "reg" property
	 * for the /clocks node and child nodes have conflicting "reg"
	 * properties.
	 */
	sc->bst = FUNC4(dev);
	error = FUNC5(sc->bst, CCU_BASE, CCU_SIZE, 0,
	    &sc->bsh);
	if (error != 0) {
		FUNC8(dev, "couldn't map CCU: %d\n", error);
		return (error);
	}

	FUNC10(&sc->mtx, FUNC6(dev), NULL, MTX_DEF);

	/* Attach child devices */
	for (child = FUNC0(node); child > 0; child = FUNC1(child)) {
		cdev = FUNC12(dev, child, 0, NULL, -1, NULL);
		if (cdev != NULL)
			FUNC9(cdev);
	}

	return (FUNC3(dev));
}