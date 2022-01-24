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
struct tegra_pcib_softc {int /*<<< orphan*/  dev; struct tegra_pcib_port** ports; } ;
struct tegra_pcib_port {int num_lanes; int /*<<< orphan*/  port_idx; int /*<<< orphan*/  afi_pex_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFI_PEX_CTRL_CLKREQ_EN ; 
 int /*<<< orphan*/  AFI_PEX_CTRL_OVERRIDE_EN ; 
 int /*<<< orphan*/  AFI_PEX_CTRL_REFCLK_EN ; 
 int /*<<< orphan*/  AFI_PEX_CTRL_RST_L ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_pcib_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_pcib_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,char*,char*) ; 
 int FUNC4 (struct tegra_pcib_softc*,struct tegra_pcib_port*) ; 

__attribute__((used)) static void
FUNC5(struct tegra_pcib_softc *sc, int port_num)
{
	struct tegra_pcib_port *port;
	uint32_t reg;
	int rv;

	port = sc->ports[port_num];

	/* Put port to reset. */
	reg = FUNC0(sc, port->afi_pex_ctrl);
	reg &= ~AFI_PEX_CTRL_RST_L;
	FUNC1(sc, port->afi_pex_ctrl, reg);
	FUNC0(sc, port->afi_pex_ctrl);
	FUNC2(10);

	/* Enable clocks. */
	reg |= AFI_PEX_CTRL_REFCLK_EN;
	reg |= AFI_PEX_CTRL_CLKREQ_EN;
	reg |= AFI_PEX_CTRL_OVERRIDE_EN;
	FUNC1(sc, port->afi_pex_ctrl, reg);
	FUNC0(sc, port->afi_pex_ctrl);
	FUNC2(100);

	/* Release reset. */
	reg |= AFI_PEX_CTRL_RST_L;
	FUNC1(sc, port->afi_pex_ctrl, reg);

	rv = FUNC4(sc, port);
	if (bootverbose)
		FUNC3(sc->dev, " port %d (%d lane%s): Link is %s\n",
			 port->port_idx, port->num_lanes,
			 port->num_lanes > 1 ? "s": "",
			 rv == 0 ? "up": "down");
}