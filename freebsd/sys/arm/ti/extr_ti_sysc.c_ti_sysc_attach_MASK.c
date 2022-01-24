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
struct ti_sysc_softc {int /*<<< orphan*/  sc; int /*<<< orphan*/ * dev; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct ti_sysc_softc* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct ti_sysc_softc *sc;
	device_t cdev;
	phandle_t node, child;

	sc = FUNC3(dev);
	sc->dev = dev;
	node = FUNC6(dev);

	FUNC9(dev, node);
	if (FUNC8(node, &sc->sc) < 0) {
		FUNC4(dev, "could not get ranges\n");
		return (ENXIO);
	}

	for (child = FUNC0(node); child > 0; child = FUNC1(child)) {
		cdev = FUNC7(dev, child, 0, NULL, -1, NULL);
		if (cdev != NULL)
			FUNC5(cdev);
	}

	return (FUNC2(dev));
}