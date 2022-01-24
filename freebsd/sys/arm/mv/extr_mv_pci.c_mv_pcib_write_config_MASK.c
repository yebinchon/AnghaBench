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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct mv_pcib_softc {int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_REG_STATUS ; 
 int PCIE_STATUS_LINK_DOWN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mv_pcib_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mv_pcib_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev, u_int bus, u_int slot, u_int func,
    u_int reg, uint32_t val, int bytes)
{
	struct mv_pcib_softc *sc = FUNC1(dev);

	/* Return if link is inactive or trying to write to Root */
	if ((FUNC0(sc->sc_bst, sc->sc_bsh, PCIE_REG_STATUS) &
	    PCIE_STATUS_LINK_DOWN) || FUNC3(dev, bus, slot, func))
		return;

	FUNC2(sc, bus, slot, func, reg, val, bytes);
}