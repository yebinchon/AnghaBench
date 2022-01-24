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
struct armada_thermal_softc {int /*<<< orphan*/ * ctrl_res; int /*<<< orphan*/ * stat_res; scalar_t__ chip_temperature; int /*<<< orphan*/  temp_upd; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct armada_thermal_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct armada_thermal_softc *sc;

	sc = FUNC2(dev);

	if (!FUNC3(dev))
		return (0);

	FUNC1(&sc->temp_upd);

	sc->chip_temperature = 0;

	FUNC0(dev, SYS_RES_MEMORY,
	    FUNC4(sc->stat_res), sc->stat_res);
	sc->stat_res = NULL;

	FUNC0(dev, SYS_RES_MEMORY,
	    FUNC4(sc->ctrl_res), sc->ctrl_res);
	sc->ctrl_res = NULL;

	return (0);
}