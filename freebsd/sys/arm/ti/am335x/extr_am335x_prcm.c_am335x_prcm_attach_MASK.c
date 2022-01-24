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
struct am335x_prcm_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  am335x_prcm_reset ; 
 struct am335x_prcm_softc* am335x_prcm_sc ; 
 int /*<<< orphan*/  am335x_prcm_spec ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct am335x_prcm_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ti_cpu_reset ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct am335x_prcm_softc *sc = FUNC1(dev);

	if (am335x_prcm_sc)
		return (ENXIO);

	if (FUNC0(dev, am335x_prcm_spec, sc->res)) {
		FUNC2(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	sc->bst = FUNC4(sc->res[0]);
	sc->bsh = FUNC3(sc->res[0]);

	am335x_prcm_sc = sc;
	ti_cpu_reset = am335x_prcm_reset;

	return (0);
}