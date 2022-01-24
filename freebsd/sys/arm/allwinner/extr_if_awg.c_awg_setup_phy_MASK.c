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
struct awg_softc {scalar_t__ type; int /*<<< orphan*/ ** res; int /*<<< orphan*/ * syscon; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  clk_t ;

/* Variables and functions */
 int EMAC_CLK_EPHY_ADDR ; 
 int EMAC_CLK_EPHY_ADDR_SHIFT ; 
 int EMAC_CLK_EPHY_LED_POL ; 
 int EMAC_CLK_EPHY_SELECT ; 
 int EMAC_CLK_EPHY_SHUTDOWN ; 
 int EMAC_CLK_ERXDC ; 
 int EMAC_CLK_ERXDC_SHIFT ; 
 int EMAC_CLK_ETXDC ; 
 int EMAC_CLK_ETXDC_SHIFT ; 
 int EMAC_CLK_PIT ; 
 int EMAC_CLK_PIT_MII ; 
 int EMAC_CLK_PIT_RGMII ; 
 int EMAC_CLK_RMII_EN ; 
 int EMAC_CLK_SRC ; 
 int EMAC_CLK_SRC_MII ; 
 int EMAC_CLK_SRC_RGMII ; 
 scalar_t__ EMAC_H3 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t _RES_SYSCON ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ bootverbose ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct awg_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct awg_softc *sc;
	clk_t clk_tx, clk_tx_parent;
	const char *tx_parent_name;
	char *phy_type;
	phandle_t node;
	uint32_t reg, tx_delay, rx_delay;
	int error;
	bool use_syscon;

	sc = FUNC9(dev);
	node = FUNC11(dev);
	use_syscon = false;

	if (FUNC0(node, "phy-mode", (void **)&phy_type) == 0)
		return (0);

	if (sc->syscon != NULL || sc->res[_RES_SYSCON] != NULL)
		use_syscon = true;

	if (bootverbose)
		FUNC10(dev, "PHY type: %s, conf mode: %s\n", phy_type,
		    use_syscon ? "reg" : "clk");

	if (use_syscon) {
		/*
		 * Abstract away writing to syscon for devices like the pine64.
		 * For the pine64, we get dtb from U-Boot and it still uses the
		 * legacy setup of specifying syscon register in emac node
		 * rather than as its own node and using an xref in emac.
		 * These abstractions can go away once U-Boot dts is up-to-date.
		 */
		reg = FUNC14(dev);
		reg &= ~(EMAC_CLK_PIT | EMAC_CLK_SRC | EMAC_CLK_RMII_EN);
		if (FUNC13(phy_type, "rgmii", 5) == 0)
			reg |= EMAC_CLK_PIT_RGMII | EMAC_CLK_SRC_RGMII;
		else if (FUNC12(phy_type, "rmii") == 0)
			reg |= EMAC_CLK_RMII_EN;
		else
			reg |= EMAC_CLK_PIT_MII | EMAC_CLK_SRC_MII;

		/*
		 * Fail attach if we fail to parse either of the delay
		 * parameters. If we don't have the proper delay to write to
		 * syscon, then awg likely won't function properly anyways.
		 * Lack of delay is not an error!
		 */
		error = FUNC4(dev, &tx_delay, &rx_delay);
		if (error != 0)
			goto fail;

		/* Default to 0 and we'll increase it if we need to. */
		reg &= ~(EMAC_CLK_ETXDC | EMAC_CLK_ERXDC);
		if (tx_delay > 0)
			reg |= (tx_delay << EMAC_CLK_ETXDC_SHIFT);
		if (rx_delay > 0)
			reg |= (rx_delay << EMAC_CLK_ERXDC_SHIFT);

		if (sc->type == EMAC_H3) {
			if (FUNC3(dev)) {
				reg |= EMAC_CLK_EPHY_SELECT;
				reg &= ~EMAC_CLK_EPHY_SHUTDOWN;
				if (FUNC1(node,
				    "allwinner,leds-active-low"))
					reg |= EMAC_CLK_EPHY_LED_POL;
				else
					reg &= ~EMAC_CLK_EPHY_LED_POL;

				/* Set internal PHY addr to 1 */
				reg &= ~EMAC_CLK_EPHY_ADDR;
				reg |= (1 << EMAC_CLK_EPHY_ADDR_SHIFT);
			} else {
				reg &= ~EMAC_CLK_EPHY_SELECT;
			}
		}

		if (bootverbose)
			FUNC10(dev, "EMAC clock: 0x%08x\n", reg);
		FUNC15(dev, reg);
	} else {
		if (FUNC13(phy_type, "rgmii", 5) == 0)
			tx_parent_name = "emac_int_tx";
		else
			tx_parent_name = "mii_phy_tx";

		/* Get the TX clock */
		error = FUNC7(dev, 0, "tx", &clk_tx);
		if (error != 0) {
			FUNC10(dev, "cannot get tx clock\n");
			goto fail;
		}

		/* Find the desired parent clock based on phy-mode property */
		error = FUNC6(dev, tx_parent_name, &clk_tx_parent);
		if (error != 0) {
			FUNC10(dev, "cannot get clock '%s'\n",
			    tx_parent_name);
			goto fail;
		}

		/* Set TX clock parent */
		error = FUNC8(clk_tx, clk_tx_parent);
		if (error != 0) {
			FUNC10(dev, "cannot set tx clock parent\n");
			goto fail;
		}

		/* Enable TX clock */
		error = FUNC5(clk_tx);
		if (error != 0) {
			FUNC10(dev, "cannot enable tx clock\n");
			goto fail;
		}
	}

	error = 0;

fail:
	FUNC2(phy_type);
	return (error);
}