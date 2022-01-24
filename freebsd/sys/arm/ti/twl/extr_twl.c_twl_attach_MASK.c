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
struct TYPE_2__ {void* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct twl_softc {int /*<<< orphan*/ * sc_clks; int /*<<< orphan*/ * sc_vreg; TYPE_1__ sc_scan_hook; void* sc_dev; } ;
typedef  void* device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct twl_softc*) ; 
 int FUNC1 (void*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (void*,char*,int) ; 
 struct twl_softc* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,char*) ; 
 int /*<<< orphan*/  twl_scan ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct twl_softc *sc;

	sc = FUNC4(dev);
	sc->sc_dev = dev;

	FUNC0(sc);

	/* We have to wait until interrupts are enabled. I2C read and write
	 * only works if the interrupts are available.
	 */
	sc->sc_scan_hook.ich_func = twl_scan;
	sc->sc_scan_hook.ich_arg = dev;

	if (FUNC2(&sc->sc_scan_hook) != 0)
		return (ENOMEM);

	/* FIXME: should be in DTS file */
	if ((sc->sc_vreg = FUNC3(dev, "twl_vreg", -1)) == NULL)
		FUNC5(dev, "could not allocate twl_vreg instance\n");
	if ((sc->sc_clks = FUNC3(dev, "twl_clks", -1)) == NULL)
		FUNC5(dev, "could not allocate twl_clks instance\n");

	return (FUNC1(dev));
}