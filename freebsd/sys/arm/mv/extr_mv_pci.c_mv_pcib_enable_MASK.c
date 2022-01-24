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
struct mv_pcib_softc {scalar_t__ sc_skip_enable_procedure; scalar_t__ sc_mode; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_CONTROL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ MV_MODE_ROOT ; 
 int PCIE_LINK_TIMEOUT ; 
 int /*<<< orphan*/  PCIE_REG_STATUS ; 
 int PCIE_STATUS_LINK_DOWN ; 
 int PCIM_CMD_BUSMASTEREN ; 
 int PCIM_CMD_MEMEN ; 
 int PCIM_CMD_PORTEN ; 
 int PCIM_CMD_SERRESPEN ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct mv_pcib_softc *sc, uint32_t unit)
{
	uint32_t val;
	int timeout;

	if (sc->sc_skip_enable_procedure)
		goto pcib_enable_root_mode;

	/*
	 * Check if PCIE device is enabled.
	 */
	if ((sc->sc_skip_enable_procedure == 0) &&
	    (FUNC4(CPU_CONTROL) & FUNC0(unit))) {
		FUNC5(CPU_CONTROL, FUNC4(CPU_CONTROL) &
		    ~(FUNC0(unit)));

		timeout = PCIE_LINK_TIMEOUT;
		val = FUNC2(sc->sc_bst, sc->sc_bsh,
		    PCIE_REG_STATUS);
		while (((val & PCIE_STATUS_LINK_DOWN) == 1) && (timeout > 0)) {
			FUNC1(1000);
			timeout -= 1000;
			val = FUNC2(sc->sc_bst, sc->sc_bsh,
			    PCIE_REG_STATUS);
		}
	}

pcib_enable_root_mode:
	if (sc->sc_mode == MV_MODE_ROOT) {
		/*
		 * Enable PCI bridge.
		 */
		val = FUNC2(sc->sc_bst, sc->sc_bsh, PCIR_COMMAND);
		val |= PCIM_CMD_SERRESPEN | PCIM_CMD_BUSMASTEREN |
		    PCIM_CMD_MEMEN | PCIM_CMD_PORTEN;
		FUNC3(sc->sc_bst, sc->sc_bsh, PCIR_COMMAND, val);
	}
}