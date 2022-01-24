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
struct pmu_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/  model; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  ocd_data; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compat_data ; 
 struct pmu_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pmu_softc* pmu_sc ; 
 int /*<<< orphan*/  pmu_spec ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct pmu_softc *sc;

	sc = FUNC1(dev);
	sc->dev = dev;
	sc->model = FUNC3(dev, compat_data)->ocd_data;

	if (FUNC0(dev, pmu_spec, sc->res)) {
		FUNC2(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC5(sc->res[0]);
	sc->bsh = FUNC4(sc->res[0]);

	pmu_sc = sc;

	return (0);
}