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
struct pinmux_softc {int /*<<< orphan*/ * mipi_mem_res; int /*<<< orphan*/ * mux_mem_res; int /*<<< orphan*/ * pad_mem_res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct pinmux_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct pinmux_softc * sc;
	int rid;

	sc = FUNC1(dev);
	sc->dev = dev;

	rid = 0;
	sc->pad_mem_res = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->pad_mem_res == NULL) {
		FUNC2(dev, "Cannot allocate memory resources\n");
		return (ENXIO);
	}

	rid = 1;
	sc->mux_mem_res = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mux_mem_res == NULL) {
		FUNC2(dev, "Cannot allocate memory resources\n");
		return (ENXIO);
	}

	rid = 2;
	sc->mipi_mem_res = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mipi_mem_res == NULL) {
		FUNC2(dev, "Cannot allocate memory resources\n");
		return (ENXIO);
	}

	/* Register as a pinctrl device and process default configuration */
	FUNC4(dev, NULL);
	FUNC3(dev, "boot");

	return (0);
}