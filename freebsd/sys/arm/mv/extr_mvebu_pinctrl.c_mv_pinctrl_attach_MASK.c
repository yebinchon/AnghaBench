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
struct mv_pinctrl_softc {int /*<<< orphan*/ * syscon; int /*<<< orphan*/  dev; struct mv_padconf* padconf; } ;
struct mv_padconf {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  compat_data ; 
 struct mv_pinctrl_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct mv_pinctrl_softc *sc;
	phandle_t node;

	sc = FUNC1(dev);
	sc->dev = dev;
	sc->padconf = (struct mv_padconf *)
	    FUNC6(dev,compat_data)->ocd_data;

	if (FUNC0(sc->dev, &sc->syscon) != 0 ||
	    sc->syscon == NULL) {
		FUNC2(dev, "cannot get syscon for device\n");
		return (ENXIO);
	}

	node = FUNC5(dev);

	FUNC4(dev, "marvell,pins");
	FUNC3(dev);

	return (0);
}