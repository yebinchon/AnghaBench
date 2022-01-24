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
typedef  int uint16_t ;
struct ahci_controller {int numirqs; int /*<<< orphan*/ * r_mem; scalar_t__ r_rid; scalar_t__ subdeviceid; scalar_t__ subvendorid; scalar_t__ deviceid; scalar_t__ vendorid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_CAP ; 
 int AHCI_CAP_SSS ; 
 int /*<<< orphan*/  AHCI_PI ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  IOMUX_GPR13 ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SATA_PHY_CLOCK_RESET ; 
 int /*<<< orphan*/  SATA_PHY_CLOCK_RESET_RST ; 
 int /*<<< orphan*/  SATA_PHY_LANE0_OUT_STAT ; 
 int SATA_PHY_LANE0_OUT_STAT_RX_PLL_STATE ; 
 int /*<<< orphan*/  SATA_TIMER1MS ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 struct ahci_controller* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int FUNC18 (struct ahci_controller*,int /*<<< orphan*/ ,int*) ; 
 int FUNC19 (struct ahci_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 () ; 
 int FUNC21 () ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC24(device_t dev)
{
	struct ahci_controller* ctlr;
	uint16_t pllstat;
	uint32_t v;
	int error, timeout;

	ctlr = FUNC16(dev);

	/* Power up the controller and phy. */
	error = FUNC20();
	if (error != 0) {
		FUNC17(dev, "error enabling controller and phy\n");
		return (error);
	}

	ctlr->vendorid = 0;
	ctlr->deviceid = 0;
	ctlr->subvendorid = 0;
	ctlr->subdeviceid = 0;
	ctlr->numirqs = 1;
	ctlr->r_rid = 0;
	if ((ctlr->r_mem = FUNC14(dev, SYS_RES_MEMORY,
	    &ctlr->r_rid, RF_ACTIVE)) == NULL) {
		return (ENXIO);
	}

	v = FUNC22(IOMUX_GPR13);
	/* Clear out existing values; these numbers are bitmasks. */
	v &= ~(FUNC11(7) 	|
	       FUNC10(0x1f) 	|
	       FUNC9(7) 	|
	       FUNC12(1) 	|
	       FUNC8(1) 	|
	       FUNC7(7) 	|
	       FUNC6(0xf) 	|
	       FUNC5(0x1f) 	|
	       FUNC4(1) 	|
	       FUNC3(1));
	/* setting */
	v |= FUNC11(5) 		|     /* Rx 3.0db */
	     FUNC10(0x12) 	|     /* Rx SATA2m */
	     FUNC9(3) 		|     /* Rx DPLL mode */
	     FUNC12(1) 		|     /* 3.0GHz */
	     FUNC8(0) 		|     /* SpreadSpectram */
	     FUNC7(4) 		|     /* Tx Attenuation 9/16 */
	     FUNC6(0) 		|     /* Tx Boost 0db */
	     FUNC5(0x11) 	|     /* Tx Level 1.104V */
	     FUNC4(1);               /* PLL clock enable */
	FUNC23(IOMUX_GPR13, v);

	/* phy reset */
	error = FUNC19(ctlr, SATA_PHY_CLOCK_RESET,
	    SATA_PHY_CLOCK_RESET_RST);
	if (error != 0) {
		FUNC17(dev, "cannot reset PHY\n");
		goto fail;
	}

	for (timeout = 50; timeout > 0; --timeout) {
		FUNC2(100);
		error = FUNC18(ctlr, SATA_PHY_LANE0_OUT_STAT,
		    &pllstat);
		if (error != 0) {
			FUNC17(dev, "cannot read LANE0 status\n");
			goto fail;
		}
		if (pllstat & SATA_PHY_LANE0_OUT_STAT_RX_PLL_STATE) {
			break;
		}
	}
	if (timeout <= 0) {
		FUNC17(dev, "time out reading LANE0 status\n");
		error = ETIMEDOUT;
		goto fail;
	}

	/* Support Staggered Spin-up */
	v = FUNC0(ctlr->r_mem, AHCI_CAP);
	FUNC1(ctlr->r_mem, AHCI_CAP, v | AHCI_CAP_SSS);

	/* Ports Implemented. must set 1 */
	v = FUNC0(ctlr->r_mem, AHCI_PI);
	FUNC1(ctlr->r_mem, AHCI_PI, v | (1 << 0));

	/* set 1ms-timer = AHB clock / 1000 */
	FUNC1(ctlr->r_mem, SATA_TIMER1MS,
		 FUNC21() / 1000);

	/*
	 * Note: ahci_attach will release ctlr->r_mem on errors automatically
	 */
	return (FUNC13(dev));

fail:
	FUNC15(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
	return (error);
}