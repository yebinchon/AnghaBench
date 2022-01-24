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
struct zy7_gpio_softc {int /*<<< orphan*/ * busdev; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct zy7_gpio_softc*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct zy7_gpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct zy7_gpio_softc *sc = FUNC2(dev);
	int rid;

	sc->dev = dev;

	FUNC0(sc);

	/* Allocate memory. */
	rid = 0;
	sc->mem_res = FUNC1(dev,
		     SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC3(dev, "Can't allocate memory for device");
		FUNC5(dev);
		return (ENOMEM);
	}

	sc->busdev = FUNC4(dev);
	if (sc->busdev == NULL) {
		FUNC5(dev);
		return (ENOMEM);
	}

	return (0);
}