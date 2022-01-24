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
typedef  scalar_t__ uint32_t ;
struct fwohci_softc {int /*<<< orphan*/  bus_id; int /*<<< orphan*/  base_addr; scalar_t__ handle; int /*<<< orphan*/  locator; int /*<<< orphan*/  devid; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIOSPCI_16BITS ; 
 int /*<<< orphan*/  BIOSPCI_32BITS ; 
 int /*<<< orphan*/  FWOHCI_STATE_DEAD ; 
 int /*<<< orphan*/  FWOHCI_STATE_INIT ; 
 int /*<<< orphan*/  OHCI_BUS_ID ; 
 int /*<<< orphan*/  FUNC0 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(int index, struct fwohci_softc *sc)
{
	int err;

	sc->state = FWOHCI_STATE_INIT;
	err = FUNC2(
		0x0c0010	/* Serial:FireWire:OHCI */,
		index		/* index */,
		&sc->locator);

	if (err != 0) {
		sc->state = FWOHCI_STATE_DEAD;
		return;
	}

	FUNC4(sc->locator,
	    0x4	/* command */,
	    BIOSPCI_16BITS,
	    0x6	/* enable bus master and memory mapped I/O */);

	FUNC3(sc->locator, 0x00 /*devid*/, BIOSPCI_32BITS,
		&sc->devid);
	FUNC3(sc->locator, 0x10 /*base_addr*/, BIOSPCI_32BITS,
		&sc->base_addr);

        sc->handle = (uint32_t)FUNC1(sc->base_addr);
	sc->bus_id = FUNC0(sc, OHCI_BUS_ID);

	return;
}