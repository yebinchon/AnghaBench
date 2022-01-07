
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct tegra_pcib_softc {int dev; struct tegra_pcib_port** ports; } ;
struct tegra_pcib_port {int num_lanes; int port_idx; int afi_pex_ctrl; } ;


 size_t AFI_PEX_CTRL_CLKREQ_EN ;
 size_t AFI_PEX_CTRL_REFCLK_EN ;
 size_t AFI_PEX_CTRL_RST_L ;
 size_t AFI_RD4 (struct tegra_pcib_softc*,int ) ;
 int AFI_WR4 (struct tegra_pcib_softc*,int ,size_t) ;
 int DELAY (int) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int ,int,char*) ;

__attribute__((used)) static void
tegra_pcib_port_disable(struct tegra_pcib_softc *sc, uint32_t port_num)
{
 struct tegra_pcib_port *port;
 uint32_t reg;

 port = sc->ports[port_num];


 reg = AFI_RD4(sc, port->afi_pex_ctrl);
 reg &= ~AFI_PEX_CTRL_RST_L;
 AFI_WR4(sc, port->afi_pex_ctrl, reg);
 AFI_RD4(sc, port->afi_pex_ctrl);
 DELAY(10);


 reg &= ~AFI_PEX_CTRL_CLKREQ_EN;
 reg &= ~AFI_PEX_CTRL_REFCLK_EN;
 AFI_WR4(sc, port->afi_pex_ctrl, reg);

 if (bootverbose)
  device_printf(sc->dev, " port %d (%d lane%s): Disabled\n",
    port->port_idx, port->num_lanes,
    port->num_lanes > 1 ? "s": "");
}
