
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_pcib_softc {int dev; struct tegra_pcib_port** ports; } ;
struct tegra_pcib_port {int num_lanes; int port_idx; int afi_pex_ctrl; } ;


 int AFI_PEX_CTRL_CLKREQ_EN ;
 int AFI_PEX_CTRL_OVERRIDE_EN ;
 int AFI_PEX_CTRL_REFCLK_EN ;
 int AFI_PEX_CTRL_RST_L ;
 int AFI_RD4 (struct tegra_pcib_softc*,int ) ;
 int AFI_WR4 (struct tegra_pcib_softc*,int ,int ) ;
 int DELAY (int) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int ,int,char*,char*) ;
 int tegra_pcib_wait_for_link (struct tegra_pcib_softc*,struct tegra_pcib_port*) ;

__attribute__((used)) static void
tegra_pcib_port_enable(struct tegra_pcib_softc *sc, int port_num)
{
 struct tegra_pcib_port *port;
 uint32_t reg;
 int rv;

 port = sc->ports[port_num];


 reg = AFI_RD4(sc, port->afi_pex_ctrl);
 reg &= ~AFI_PEX_CTRL_RST_L;
 AFI_WR4(sc, port->afi_pex_ctrl, reg);
 AFI_RD4(sc, port->afi_pex_ctrl);
 DELAY(10);


 reg |= AFI_PEX_CTRL_REFCLK_EN;
 reg |= AFI_PEX_CTRL_CLKREQ_EN;
 reg |= AFI_PEX_CTRL_OVERRIDE_EN;
 AFI_WR4(sc, port->afi_pex_ctrl, reg);
 AFI_RD4(sc, port->afi_pex_ctrl);
 DELAY(100);


 reg |= AFI_PEX_CTRL_RST_L;
 AFI_WR4(sc, port->afi_pex_ctrl, reg);

 rv = tegra_pcib_wait_for_link(sc, port);
 if (bootverbose)
  device_printf(sc->dev, " port %d (%d lane%s): Link is %s\n",
    port->port_idx, port->num_lanes,
    port->num_lanes > 1 ? "s": "",
    rv == 0 ? "up": "down");
}
