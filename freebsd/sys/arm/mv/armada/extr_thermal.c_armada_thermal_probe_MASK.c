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
struct armada_thermal_softc {int /*<<< orphan*/ * tdata; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  armada380_tdata ; 
 struct armada_thermal_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct armada_thermal_softc *sc;

	sc = FUNC0(dev);

	if (!FUNC3(dev))
		return (ENXIO);

	if (FUNC2(dev, "marvell,armada380-thermal")) {
		FUNC1(dev, "Armada380 Thermal Control");
		sc->tdata = &armada380_tdata;

		return (BUS_PROBE_DEFAULT);
	}

	return (ENXIO);
}