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
struct soctherm_softc {uintptr_t ntsensors; TYPE_1__* tsensors; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {uintptr_t id; } ;

/* Variables and functions */
 int ERANGE ; 
 struct soctherm_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct soctherm_softc*,TYPE_1__*,int*) ; 

__attribute__((used)) static int
FUNC2(device_t dev, device_t cdev, uintptr_t id, int *val)
{
	struct soctherm_softc *sc;
	int i;

	sc = FUNC0(dev);
	/* The direct sensor map starts at 0x100 */
	if (id >= 0x100) {
		id -= 0x100;
		if (id >= sc->ntsensors)
			return (ERANGE);
		return(FUNC1(sc, sc->tsensors + id, val));
	}
	/* Linux (DT) compatible thermal zones */
	for (i = 0; i < sc->ntsensors; i++) {
		if (sc->tsensors->id == id)
			return(FUNC1(sc, sc->tsensors + id, val));
	}
	return (ERANGE);
}