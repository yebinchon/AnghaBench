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
struct fwohci_softc {int /*<<< orphan*/ * config_rom; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_PHY_IBR ; 
 int /*<<< orphan*/  FW_PHY_IBR_REG ; 
 int /*<<< orphan*/  FW_PHY_ISBR ; 
 int /*<<< orphan*/  FW_PHY_ISBR_REG ; 
 int /*<<< orphan*/  OHCI_BUS_OPT ; 
 int /*<<< orphan*/  OHCI_CROMHDR ; 
 int /*<<< orphan*/  FUNC0 (struct fwohci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fwohci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct fwohci_softc *sc)
{
	uint32_t fun;

	FUNC1(sc->dev, "Initiate bus reset\n");

	/*
	 * Make sure our cached values from the config rom are
	 * initialised.
	 */
	FUNC0(sc, OHCI_CROMHDR, FUNC4(sc->config_rom[0]));
	FUNC0(sc, OHCI_BUS_OPT, FUNC4(sc->config_rom[2]));

	/*
	 * Set root hold-off bit so that non cyclemaster capable node
	 * shouldn't became the root node.
	 */
#if 1
	fun = FUNC2(sc, FW_PHY_IBR_REG);
	fun |= FW_PHY_IBR;
	fun = FUNC3(sc, FW_PHY_IBR_REG, fun);
#else	/* Short bus reset */
	fun = fwphy_rddata(sc, FW_PHY_ISBR_REG);
	fun |= FW_PHY_ISBR;
	fun = fwphy_wrdata(sc, FW_PHY_ISBR_REG, fun);
#endif
}