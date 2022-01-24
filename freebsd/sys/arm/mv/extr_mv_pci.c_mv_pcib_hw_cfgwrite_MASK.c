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
typedef  int u_int ;
struct mv_pcib_softc {scalar_t__ sc_type; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; } ;

/* Variables and functions */
 scalar_t__ MV_TYPE_PCI ; 
 int PCIE_REG_CFG_ADDR ; 
 int PCIE_REG_CFG_DATA ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int PCI_CFG_ENA ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int PCI_REG_CFG_ADDR ; 
 int PCI_REG_CFG_DATA ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcicfg_mtx ; 

__attribute__((used)) static void
FUNC11(struct mv_pcib_softc *sc, u_int bus, u_int slot,
    u_int func, u_int reg, uint32_t data, int bytes)
{
	uint32_t addr, ca, cd;

	ca = (sc->sc_type != MV_TYPE_PCI) ?
	    PCIE_REG_CFG_ADDR : PCI_REG_CFG_ADDR;
	cd = (sc->sc_type != MV_TYPE_PCI) ?
	    PCIE_REG_CFG_DATA : PCI_REG_CFG_DATA;
	addr = PCI_CFG_ENA | FUNC0(bus) | FUNC1(slot) |
	    FUNC2(func) | FUNC3(reg);

	FUNC9(&pcicfg_mtx);
	FUNC6(sc->sc_bst, sc->sc_bsh, ca, addr);

	switch (bytes) {
	case 1:
		FUNC4(sc->sc_bst, sc->sc_bsh,
		    cd + (reg & 3), data);
		break;
	case 2:
		FUNC5(sc->sc_bst, sc->sc_bsh,
		    cd + (reg & 2), FUNC7(data));
		break;
	case 4:
		FUNC6(sc->sc_bst, sc->sc_bsh,
		    cd, FUNC8(data));
		break;
	}
	FUNC10(&pcicfg_mtx);
}