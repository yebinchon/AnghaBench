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
struct snvs_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/ * memres; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  RTC_RESOLUTION_US ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snvs_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct snvs_softc *sc;
	int rid;

	sc = FUNC2(dev);
	sc->dev = dev;

	rid = 0;
	sc->memres = FUNC0(sc->dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->memres == NULL) {
		FUNC3(sc->dev, "could not allocate registers\n");
		return (ENXIO);
	}

	FUNC1(sc->dev, RTC_RESOLUTION_US);

	return (0);
}