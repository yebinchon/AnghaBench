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
struct rt1310_gpio_softc {int /*<<< orphan*/  lg_res; int /*<<< orphan*/ * lg_busdev; int /*<<< orphan*/  lg_bsh; int /*<<< orphan*/  lg_bst; int /*<<< orphan*/  lg_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct rt1310_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct rt1310_gpio_softc* rt1310_gpio_sc ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct rt1310_gpio_softc *sc = FUNC2(dev);
	int rid;

	sc->lg_dev = dev;

	rid = 0;
	sc->lg_res = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->lg_res) {
		FUNC3(dev, "cannot allocate memory window\n");
		return (ENXIO);
	}

	sc->lg_bst = FUNC6(sc->lg_res);
	sc->lg_bsh = FUNC5(sc->lg_res);

	rt1310_gpio_sc = sc;

	sc->lg_busdev = FUNC4(dev);
	if (sc->lg_busdev == NULL) {
		FUNC1(dev, SYS_RES_MEMORY, rid, sc->lg_res);
		return (ENXIO);
	}

	return (0);
}