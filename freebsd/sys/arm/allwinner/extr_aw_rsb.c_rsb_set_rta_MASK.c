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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct rsb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ rta; int addr; } ;

/* Variables and functions */
 int CMD_SRTA ; 
 int DAR_DA_SHIFT ; 
 int DAR_RTA_SHIFT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct rsb_softc*) ; 
 int /*<<< orphan*/  RSB_CMD ; 
 int /*<<< orphan*/  RSB_DAR ; 
 int /*<<< orphan*/  RSB_INTS ; 
 int FUNC1 (struct rsb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rsb_softc*,int /*<<< orphan*/ ,int) ; 
 struct rsb_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* rsb_rtamap ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint16_t addr)
{
	struct rsb_softc *sc;
	uint8_t rta;
	int i;

	sc = FUNC3(dev);

	FUNC0(sc);

	/* Lookup run-time address for given device address */
	for (rta = 0, i = 0; rsb_rtamap[i].rta != 0; i++)
		if (rsb_rtamap[i].addr == addr) {
			rta = rsb_rtamap[i].rta;
			break;
		}
	if (rta == 0) {
		FUNC4(dev, "RTA not known for address %#x\n", addr);
		return (ENXIO);
	}

	/* Set run-time address */
	FUNC2(sc, RSB_INTS, FUNC1(sc, RSB_INTS));
	FUNC2(sc, RSB_DAR, (addr << DAR_DA_SHIFT) | (rta << DAR_RTA_SHIFT));
	FUNC2(sc, RSB_CMD, CMD_SRTA);

	return (FUNC5(dev));
}