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
struct rk_typec_phy_softc {int /*<<< orphan*/  rst_pipe; int /*<<< orphan*/  dev; int /*<<< orphan*/  rst_uphy; int /*<<< orphan*/  rst_tcphy; int /*<<< orphan*/  tcpdcore; int /*<<< orphan*/  tcpdphy_ref; } ;
struct phynode {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMN_DIAG_HSCLK_SEL ; 
 int CMN_DIAG_HSCLK_SEL_PLL_CONFIG ; 
 int CMN_DIAG_HSCLK_SEL_PLL_MASK ; 
 int /*<<< orphan*/  CMN_DIAG_PLL0_CP_TUNE ; 
 int /*<<< orphan*/  CMN_DIAG_PLL0_FBH_OVRD ; 
 int /*<<< orphan*/  CMN_DIAG_PLL0_FBL_OVRD ; 
 int /*<<< orphan*/  CMN_DIAG_PLL0_LF_PROG ; 
 int /*<<< orphan*/  CMN_DIAG_PLL0_OVRD ; 
 int /*<<< orphan*/  CMN_DIAG_PLL0_V2I_TUNE ; 
 int /*<<< orphan*/  CMN_PLL0_DSM_DIAG ; 
 int /*<<< orphan*/  CMN_PLL0_FRACDIV ; 
 int /*<<< orphan*/  CMN_PLL0_HIGH_THR ; 
 int /*<<< orphan*/  CMN_PLL0_INTDIV ; 
 int /*<<< orphan*/  CMN_PLL0_SS_CTRL1 ; 
 int /*<<< orphan*/  CMN_PLL0_SS_CTRL2 ; 
 int /*<<< orphan*/  CMN_PLL0_VCOCAL_INIT ; 
 int /*<<< orphan*/  CMN_PLL0_VCOCAL_ITER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DP_MODE_CTL ; 
 int DP_MODE_ENTER_A2 ; 
 int ENXIO ; 
 int ERANGE ; 
 int PIN_ASSIGN_D_F ; 
 int /*<<< orphan*/  PMA_CMN_CTRL1 ; 
 int PMA_CMN_CTRL1_READY ; 
 int /*<<< orphan*/  PMA_LANE_CFG ; 
 intptr_t RK3399_TYPEC_PHY_USB3 ; 
 int FUNC1 (struct rk_typec_phy_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rk_typec_phy_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 struct rk_typec_phy_softc* FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct phynode*) ; 
 intptr_t FUNC28 (struct phynode*) ; 
 int /*<<< orphan*/  FUNC29 (struct rk_typec_phy_softc*,int) ; 

__attribute__((used)) static int
FUNC30(struct phynode *phynode, bool enable)
{
	struct rk_typec_phy_softc *sc;
	device_t dev;
	intptr_t phy;
	uint32_t reg;
	int err, retry;

	dev = FUNC27(phynode);
	phy = FUNC28(phynode);
	sc = FUNC24(dev);

	if (phy != RK3399_TYPEC_PHY_USB3)
		return (ERANGE);

	FUNC29(sc, false);

	err = FUNC22(sc->tcpdcore);
	if (err != 0) {
		FUNC25(dev, "Could not enable clock %s\n",
		    FUNC23(sc->tcpdcore));
		return (ENXIO);
	}
	err = FUNC22(sc->tcpdphy_ref);
	if (err != 0) {
		FUNC25(dev, "Could not enable clock %s\n",
		    FUNC23(sc->tcpdphy_ref));
		FUNC21(sc->tcpdcore);
		return (ENXIO);
	}

	FUNC26(sc->rst_tcphy);

	/* 24M configuration, magic values from rockchip */
	FUNC2(sc, PMA_CMN_CTRL1, 0x830);
	for (int i = 0; i < 4; i++) {
		FUNC2(sc, FUNC20(i), 0x90);
		FUNC2(sc, FUNC16(i), 0x960);
		FUNC2(sc, FUNC17(i), 0x30);
	}
	reg = FUNC1(sc, CMN_DIAG_HSCLK_SEL);
	reg &= ~CMN_DIAG_HSCLK_SEL_PLL_MASK;
	reg |= CMN_DIAG_HSCLK_SEL_PLL_CONFIG;
	FUNC2(sc, CMN_DIAG_HSCLK_SEL, reg);

	/* PLL configuration, magic values from rockchip */
	FUNC2(sc, CMN_PLL0_VCOCAL_INIT, 0xf0);
	FUNC2(sc, CMN_PLL0_VCOCAL_ITER, 0x18);
	FUNC2(sc, CMN_PLL0_INTDIV, 0xd0);
	FUNC2(sc, CMN_PLL0_FRACDIV, 0x4a4a);
	FUNC2(sc, CMN_PLL0_HIGH_THR, 0x34);
	FUNC2(sc, CMN_PLL0_SS_CTRL1, 0x1ee);
	FUNC2(sc, CMN_PLL0_SS_CTRL2, 0x7f03);
	FUNC2(sc, CMN_PLL0_DSM_DIAG, 0x20);
	FUNC2(sc, CMN_DIAG_PLL0_OVRD, 0);
	FUNC2(sc, CMN_DIAG_PLL0_FBH_OVRD, 0);
	FUNC2(sc, CMN_DIAG_PLL0_FBL_OVRD, 0);
	FUNC2(sc, CMN_DIAG_PLL0_V2I_TUNE, 0x7);
	FUNC2(sc, CMN_DIAG_PLL0_CP_TUNE, 0x45);
	FUNC2(sc, CMN_DIAG_PLL0_LF_PROG, 0x8);

	/* Configure the TX and RX line, magic values from rockchip */
	FUNC2(sc, FUNC12(0), 0x7799);
	FUNC2(sc, FUNC13(0), 0x7798);
	FUNC2(sc, FUNC14(0), 0x5098);
	FUNC2(sc, FUNC15(0), 0x5098);
	FUNC2(sc, FUNC18(0), 0x0);
	FUNC2(sc, FUNC19(0), 0xbf);

	FUNC2(sc, FUNC4(1), 0xa6fd);
	FUNC2(sc, FUNC5(1), 0xa6fd);
	FUNC2(sc, FUNC6(1), 0xa410);
	FUNC2(sc, FUNC7(1), 0x2410);
	FUNC2(sc, FUNC8(1), 0x23ff);
	FUNC2(sc, FUNC11(1), 0x13);
	FUNC2(sc, FUNC10(1), 0x03e7);
	FUNC2(sc, FUNC3(1), 0x1004);
	FUNC2(sc, FUNC9(1), 0x2010);
	FUNC2(sc, FUNC19(1), 0xfb);

	FUNC2(sc, PMA_LANE_CFG, PIN_ASSIGN_D_F);

	FUNC2(sc, DP_MODE_CTL, DP_MODE_ENTER_A2);

	FUNC26(sc->rst_uphy);

	for (retry = 10000; retry > 0; retry--) {
		reg = FUNC1(sc, PMA_CMN_CTRL1);
		if (reg & PMA_CMN_CTRL1_READY)
			break;
		FUNC0(10);
	}
	if (retry == 0) {
		FUNC25(sc->dev, "Timeout waiting for PMA\n");
		return (ENXIO);
	}

	FUNC26(sc->rst_pipe);

	return (0);
}