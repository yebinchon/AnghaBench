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
struct ahci_controller {int numirqs; int /*<<< orphan*/  r_mem; scalar_t__ r_rid; int /*<<< orphan*/  ch_start; scalar_t__ msi; scalar_t__ subdeviceid; scalar_t__ subvendorid; scalar_t__ deviceid; scalar_t__ vendorid; int /*<<< orphan*/  quirks; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/ * clk_t ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_Q_NOPMP ; 
 int /*<<< orphan*/  CLK_SET_ROUND_DOWN ; 
 int ENXIO ; 
 int /*<<< orphan*/  PLL_FREQ ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  ahci_a10_ch_start ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ahci_controller* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	int error;
	struct ahci_controller *ctlr;
	clk_t clk_pll, clk_gate;

	ctlr = FUNC8(dev);
	clk_pll = clk_gate = NULL;

	ctlr->quirks = AHCI_Q_NOPMP;
	ctlr->vendorid = 0;
	ctlr->deviceid = 0;
	ctlr->subvendorid = 0;
	ctlr->subdeviceid = 0;
	ctlr->r_rid = 0;
	if (!(ctlr->r_mem = FUNC2(dev, SYS_RES_MEMORY,
	    &ctlr->r_rid, RF_ACTIVE)))
		return (ENXIO);

	/* Enable clocks */
	error = FUNC5(dev, 0, 0, &clk_gate);
	if (error != 0) {
		FUNC9(dev, "Cannot get gate clock\n");
		goto fail;
	}
	error = FUNC5(dev, 0, 1, &clk_pll);
	if (error != 0) {
		FUNC9(dev, "Cannot get PLL clock\n");
		goto fail;
	}
	error = FUNC7(clk_pll, PLL_FREQ, CLK_SET_ROUND_DOWN);
	if (error != 0) {
		FUNC9(dev, "Cannot set PLL frequency\n");
		goto fail;
	}
	error = FUNC4(clk_pll);
	if (error != 0) {
		FUNC9(dev, "Cannot enable PLL\n");
		goto fail;
	}
	error = FUNC4(clk_gate);
	if (error != 0) {
		FUNC9(dev, "Cannot enable clk gate\n");
		goto fail;
	}
	
	/* Reset controller */
	if ((error = FUNC0(dev)) != 0)
		goto fail;

	/*
	 * No MSI registers on this platform.
	 */
	ctlr->msi = 0;
	ctlr->numirqs = 1;

	/* Channel start callback(). */
	ctlr->ch_start = ahci_a10_ch_start;

	/*
	 * Note: ahci_attach will release ctlr->r_mem on errors automatically
	 */
	return (FUNC1(dev));

fail:
	if (clk_gate != NULL)
		FUNC6(clk_gate);
	if (clk_pll != NULL)
		FUNC6(clk_pll);
	FUNC3(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
	return (error);
}