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
struct versatile_scm_softc {int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct versatile_scm_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct versatile_scm_softc* versatile_scm_sc ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct versatile_scm_softc *sc;
	int rid;

	sc = FUNC1(dev);
	sc->sc_dev = dev;

	rid = 0;
	sc->sc_mem_res = FUNC0(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);

	if (sc->sc_mem_res == NULL) {
		FUNC2(dev, "could not allocate memory resources\n");
		return (ENXIO);
	}

	versatile_scm_sc = sc;

	return (0);
}