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
struct tegra_pcib_softc {int /*<<< orphan*/  dev; } ;
struct tegra_pcib_port {int /*<<< orphan*/  port_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  RP_LINK_CONTROL_STATUS ; 
 int RP_LINK_CONTROL_STATUS_DL_LINK_ACTIVE ; 
 int /*<<< orphan*/  RP_PRIV_MISC ; 
 int RP_PRIV_MISC_PRSNT_MAP_EP_ABSNT ; 
 int RP_PRIV_MISC_PRSNT_MAP_EP_PRSNT ; 
 int /*<<< orphan*/  RP_VEND_XP ; 
 int RP_VEND_XP_DL_UP ; 
 int TEGRA_PCIE_LINKUP_TIMEOUT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC3(struct tegra_pcib_softc *sc,
    struct tegra_pcib_port *port)
{
	uint32_t reg;
	int i;


	/* Setup link detection. */
	reg = FUNC1(sc->dev, 0, port->port_idx, 0,
	    RP_PRIV_MISC, 4);
	reg &= ~RP_PRIV_MISC_PRSNT_MAP_EP_ABSNT;
	reg |= RP_PRIV_MISC_PRSNT_MAP_EP_PRSNT;
	FUNC2(sc->dev, 0, port->port_idx, 0,
	    RP_PRIV_MISC, reg, 4);

	for (i = TEGRA_PCIE_LINKUP_TIMEOUT; i > 0; i--) {
		reg = FUNC1(sc->dev, 0, port->port_idx, 0,
		    RP_VEND_XP, 4);
		if (reg & RP_VEND_XP_DL_UP)
				break;
		FUNC0(1);

	}
	if (i <= 0)
		return (ETIMEDOUT);

	for (i = TEGRA_PCIE_LINKUP_TIMEOUT; i > 0; i--) {
		reg = FUNC1(sc->dev, 0, port->port_idx, 0,
		    RP_LINK_CONTROL_STATUS, 4);
		if (reg & RP_LINK_CONTROL_STATUS_DL_LINK_ACTIVE)
				break;

		FUNC0(1);
	}
	if (i <= 0)
		return (ETIMEDOUT);
	return (0);
}