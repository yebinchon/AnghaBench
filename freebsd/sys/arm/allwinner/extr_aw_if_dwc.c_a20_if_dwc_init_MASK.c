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
typedef  int /*<<< orphan*/  regulator_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  clk_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,void**) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	const char *tx_parent_name;
	char *phy_type;
	clk_t clk_tx, clk_tx_parent;
	regulator_t reg;
	phandle_t node;
	int error;

	node = FUNC5(dev);

	/* Configure PHY for MII or RGMII mode */
	if (FUNC0(node, "phy-mode", (void **)&phy_type)) {
		error = FUNC2(dev, 0, "allwinner_gmac_tx", &clk_tx);
		if (error != 0) {
			FUNC4(dev, "could not get tx clk\n");
			return (error);
		}

		if (FUNC8(phy_type, "rgmii") == 0)
			tx_parent_name = "gmac_int_tx";
		else
			tx_parent_name = "mii_phy_tx";

		error = FUNC1(dev, tx_parent_name, &clk_tx_parent);
		if (error != 0) {
			FUNC4(dev, "could not get clock '%s'\n",
			    tx_parent_name);
			return (error);
		}

		error = FUNC3(clk_tx, clk_tx_parent);
		if (error != 0) {
			FUNC4(dev, "could not set tx clk parent\n");
			return (error);
		}
	}

	/* Enable PHY regulator if applicable */
	if (FUNC7(dev, 0, "phy-supply", &reg) == 0) {
		error = FUNC6(reg);
		if (error != 0) {
			FUNC4(dev, "could not enable PHY regulator\n");
			return (error);
		}
	}

	return (0);
}