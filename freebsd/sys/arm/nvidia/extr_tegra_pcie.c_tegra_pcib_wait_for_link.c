
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_pcib_softc {int dev; } ;
struct tegra_pcib_port {int port_idx; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int RP_LINK_CONTROL_STATUS ;
 int RP_LINK_CONTROL_STATUS_DL_LINK_ACTIVE ;
 int RP_PRIV_MISC ;
 int RP_PRIV_MISC_PRSNT_MAP_EP_ABSNT ;
 int RP_PRIV_MISC_PRSNT_MAP_EP_PRSNT ;
 int RP_VEND_XP ;
 int RP_VEND_XP_DL_UP ;
 int TEGRA_PCIE_LINKUP_TIMEOUT ;
 int tegra_pcib_read_config (int ,int ,int ,int ,int ,int) ;
 int tegra_pcib_write_config (int ,int ,int ,int ,int ,int,int) ;

__attribute__((used)) static int
tegra_pcib_wait_for_link(struct tegra_pcib_softc *sc,
    struct tegra_pcib_port *port)
{
 uint32_t reg;
 int i;



 reg = tegra_pcib_read_config(sc->dev, 0, port->port_idx, 0,
     RP_PRIV_MISC, 4);
 reg &= ~RP_PRIV_MISC_PRSNT_MAP_EP_ABSNT;
 reg |= RP_PRIV_MISC_PRSNT_MAP_EP_PRSNT;
 tegra_pcib_write_config(sc->dev, 0, port->port_idx, 0,
     RP_PRIV_MISC, reg, 4);

 for (i = TEGRA_PCIE_LINKUP_TIMEOUT; i > 0; i--) {
  reg = tegra_pcib_read_config(sc->dev, 0, port->port_idx, 0,
      RP_VEND_XP, 4);
  if (reg & RP_VEND_XP_DL_UP)
    break;
  DELAY(1);

 }
 if (i <= 0)
  return (ETIMEDOUT);

 for (i = TEGRA_PCIE_LINKUP_TIMEOUT; i > 0; i--) {
  reg = tegra_pcib_read_config(sc->dev, 0, port->port_idx, 0,
      RP_LINK_CONTROL_STATUS, 4);
  if (reg & RP_LINK_CONTROL_STATUS_DL_LINK_ACTIVE)
    break;

  DELAY(1);
 }
 if (i <= 0)
  return (ETIMEDOUT);
 return (0);
}
