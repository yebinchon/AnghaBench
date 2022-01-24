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
typedef  int uint32_t ;
struct mv_pcib_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ bootverbose ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int,int,int,int) ; 
 int FUNC3 (struct mv_pcib_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int,int,int,int) ; 

__attribute__((used)) static int
FUNC5(struct mv_pcib_softc *sc, int bus, int slot, int func,
    int barno)
{
	uint32_t addr, bar;
	int reg, width;

	reg = FUNC0(barno);

	/*
	 * Need to init the BAR register with 0xffffffff before correct
	 * value can be read.
	 */
	FUNC2(sc->sc_dev, bus, slot, func, reg, ~0, 4);
	bar = FUNC1(sc->sc_dev, bus, slot, func, reg, 4);
	if (bar == 0)
		return (1);

	/* Calculate BAR size: 64 or 32 bit (in 32-bit units) */
	width = ((bar & 7) == 4) ? 2 : 1;

	addr = FUNC3(sc, bar);
	if (!addr)
		return (-1);

	if (bootverbose)
		FUNC4("PCI %u:%u:%u: reg %x: smask=%08x: addr=%08x\n",
		    bus, slot, func, reg, bar, addr);

	FUNC2(sc->sc_dev, bus, slot, func, reg, addr, 4);
	if (width == 2)
		FUNC2(sc->sc_dev, bus, slot, func, reg + 4,
		    0, 4);

	return (width);
}