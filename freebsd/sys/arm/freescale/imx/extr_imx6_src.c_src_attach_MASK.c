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
struct src_softc {int /*<<< orphan*/ * mem_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct src_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct src_softc* src_sc ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct src_softc *sc;
	int err, rid;

	sc = FUNC1(dev);
	err = 0;

	/* Allocate bus_space resources. */
	rid = 0;
	sc->mem_res = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC2(dev, "Cannot allocate memory resources\n");
		err = ENXIO;
		goto out;
	}

	src_sc = sc;

	err = 0;

out:

	if (err != 0)
		FUNC3(dev);

	return (err);
}