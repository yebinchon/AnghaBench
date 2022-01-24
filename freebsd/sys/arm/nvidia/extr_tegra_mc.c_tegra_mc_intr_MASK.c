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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct tegra_mc_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int MC_ERR_RW ; 
 int MC_ERR_SECURITY ; 
 int /*<<< orphan*/  MC_ERR_STATUS ; 
 int MC_ERR_SWAP ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  MC_INTSTATUS ; 
 int MC_INT_ARBITRATION_EMEM ; 
 int MC_INT_DECERR_EMEM ; 
 int MC_INT_DECERR_MTS ; 
 int MC_INT_DECERR_VPR ; 
 int MC_INT_INT_MASK ; 
 int MC_INT_INVALID_APB_ASID_UPDATE ; 
 int MC_INT_INVALID_SMMU_PAGE ; 
 int MC_INT_SECERR_SEC ; 
 int MC_INT_SECURITY_VIOLATION ; 
 int FUNC2 (struct tegra_mc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_mc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/ * smmu_err_tbl ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct tegra_mc_softc *sc;
	uint32_t stat, err;
	uint64_t addr;

	sc = (struct tegra_mc_softc *)arg;

	stat = FUNC2(sc, MC_INTSTATUS);
	if ((stat & MC_INT_INT_MASK) == 0) {
		FUNC3(sc, MC_INTSTATUS, stat);
		return;
	}

	FUNC4(sc->dev, "Memory Controller Interrupt:\n");
	if (stat & MC_INT_DECERR_MTS)
		FUNC5(" - MTS carveout violation\n");
	if (stat & MC_INT_SECERR_SEC)
		FUNC5(" - SEC carveout violation\n");
	if (stat & MC_INT_DECERR_VPR)
		FUNC5(" - VPR requirements violated\n");
	if (stat & MC_INT_INVALID_APB_ASID_UPDATE)
		FUNC5(" - ivalid APB ASID update\n");
	if (stat & MC_INT_INVALID_SMMU_PAGE)
		FUNC5(" - SMMU address translation error\n");
	if (stat & MC_INT_ARBITRATION_EMEM)
		FUNC5(" - arbitration deadlock-prevention threshold hit\n");
	if (stat & MC_INT_SECURITY_VIOLATION)
		FUNC5(" - SMMU address translation security error\n");
	if (stat & MC_INT_DECERR_EMEM)
		FUNC5(" - SMMU address decode error\n");

	if ((stat & (MC_INT_INVALID_SMMU_PAGE | MC_INT_SECURITY_VIOLATION |
	   MC_INT_DECERR_EMEM)) != 0) {
		err = FUNC2(sc, MC_ERR_STATUS);
		addr = FUNC2(sc, MC_ERR_STATUS);
		addr |= (uint64_t)(FUNC0(err)) << 32;
		FUNC5(" at 0x%012llX [%s %s %s]  - %s error.\n",
		    addr,
		    stat & MC_ERR_SWAP ? "Swap, " : "",
		    stat & MC_ERR_SECURITY ? "Sec, " : "",
		    stat & MC_ERR_RW ? "Write" : "Read",
		    smmu_err_tbl[FUNC1(err)]);
	}
	FUNC3(sc, MC_INTSTATUS, stat);
}