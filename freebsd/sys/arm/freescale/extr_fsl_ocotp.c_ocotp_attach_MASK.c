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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct ocotp_softc {int /*<<< orphan*/ * mem_res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct ocotp_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ocotp_regs ; 
 struct ocotp_softc* ocotp_sc ; 
 int /*<<< orphan*/  ocotp_size ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct ocotp_softc *sc;
	int err, rid;

	sc = FUNC1(dev);
	sc->dev = dev;

	/* Allocate bus_space resources. */
	rid = 0;
	sc->mem_res = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC2(dev, "Cannot allocate memory resources\n");
		err = ENXIO;
		goto out;
	}

	ocotp_sc = sc;

	/* We're done with the temporary mapping now. */
	if (ocotp_regs != NULL)
		FUNC4((vm_offset_t)ocotp_regs, ocotp_size);

	err = 0;

out:
	if (err != 0)
		FUNC3(dev);

	return (err);
}