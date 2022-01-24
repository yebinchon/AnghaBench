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
typedef  size_t uint32_t ;
struct tegra_pcib_softc {int /*<<< orphan*/  dev; struct tegra_pcib_port** ports; } ;
struct tegra_pcib_port {int num_lanes; int /*<<< orphan*/  port_idx; int /*<<< orphan*/  afi_pex_ctrl; } ;

/* Variables and functions */
 size_t AFI_PEX_CTRL_CLKREQ_EN ; 
 size_t AFI_PEX_CTRL_REFCLK_EN ; 
 size_t AFI_PEX_CTRL_RST_L ; 
 size_t FUNC0 (struct tegra_pcib_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_pcib_softc*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static void
FUNC4(struct tegra_pcib_softc *sc, uint32_t port_num)
{
	struct tegra_pcib_port *port;
	uint32_t reg;

	port = sc->ports[port_num];

	/* Put port to reset. */
	reg = FUNC0(sc, port->afi_pex_ctrl);
	reg &= ~AFI_PEX_CTRL_RST_L;
	FUNC1(sc, port->afi_pex_ctrl, reg);
	FUNC0(sc, port->afi_pex_ctrl);
	FUNC2(10);

	/* Disable clocks. */
	reg &= ~AFI_PEX_CTRL_CLKREQ_EN;
	reg &= ~AFI_PEX_CTRL_REFCLK_EN;
	FUNC1(sc, port->afi_pex_ctrl, reg);

	if (bootverbose)
		FUNC3(sc->dev, " port %d (%d lane%s): Disabled\n",
			 port->port_idx, port->num_lanes,
			 port->num_lanes > 1 ? "s": "");
}