
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xhci_softc {int dev; int phy_usb3_0; int phy_usb2_2; int phy_usb2_1; int phy_usb2_0; int clk_xusb_hs_src; int clk_xusb_fs_src; int clk_xusb_falcon_src; int hwreset_xusb_ss; int clk_xusb_ss; int hwreset_xusb_host; int clk_xusb_host; int clk_xusb_gate; int supply_hvdd_usb_ss_pll_e; int supply_hvdd_usb_ss; int supply_avdd_usb_ss_pll; int supply_avdd_pll_erefe; int supply_avdd_pll_utmip; int supply_avdd_usb; int supply_dvddio_pex; int supply_avddio_pex; } ;


 int TEGRA_POWERGATE_XUSBA ;
 int TEGRA_POWERGATE_XUSBC ;
 int TEGRA_XHCI_SS_HIGH_SPEED ;
 int clk_enable (int ) ;
 int clk_set_freq (int ,int ,int ) ;
 int device_printf (int ,char*) ;
 int hwreset_assert (int ) ;
 int phy_enable (int ) ;
 int regulator_enable (int ) ;
 int tegra_powergate_power_off (int ) ;
 int tegra_powergate_sequence_power_up (int ,int ,int ) ;

__attribute__((used)) static int
enable_fdt_resources(struct tegra_xhci_softc *sc)
{
 int rv;

 rv = hwreset_assert(sc->hwreset_xusb_host);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot reset 'xusb_host' reset\n");
  return (rv);
 }
 rv = hwreset_assert(sc->hwreset_xusb_ss);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot reset 'xusb_ss' reset\n");
  return (rv);
 }

 rv = regulator_enable(sc->supply_avddio_pex);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable 'avddio_pex' regulator\n");
  return (rv);
 }
 rv = regulator_enable(sc->supply_dvddio_pex);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable 'dvddio_pex' regulator\n");
  return (rv);
 }
 rv = regulator_enable(sc->supply_avdd_usb);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable 'avdd_usb' regulator\n");
  return (rv);
 }
 rv = regulator_enable(sc->supply_avdd_pll_utmip);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable 'avdd_pll_utmip-5v' regulator\n");
  return (rv);
 }
 rv = regulator_enable(sc->supply_avdd_pll_erefe);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable 'avdd_pll_erefe' regulator\n");
  return (rv);
 }
 rv = regulator_enable(sc->supply_avdd_usb_ss_pll);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable 'avdd_usb_ss_pll' regulator\n");
  return (rv);
 }
 rv = regulator_enable(sc->supply_hvdd_usb_ss);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable 'hvdd_usb_ss' regulator\n");
  return (rv);
 }
 rv = regulator_enable(sc->supply_hvdd_usb_ss_pll_e);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable 'hvdd_usb_ss_pll_e' regulator\n");
  return (rv);
 }


 rv = tegra_powergate_power_off(TEGRA_POWERGATE_XUSBA);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot powerdown  'xusba' domain\n");
  return (rv);
 }
 rv = tegra_powergate_power_off(TEGRA_POWERGATE_XUSBC);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot powerdown  'xusbc' domain\n");
  return (rv);
 }


 clk_set_freq(sc->clk_xusb_ss, TEGRA_XHCI_SS_HIGH_SPEED, 0);
 if (rv != 0)
  return (rv);


 rv = clk_enable(sc->clk_xusb_gate);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable 'xusb_gate' clock\n");
  return (rv);
 }


 rv = tegra_powergate_sequence_power_up(TEGRA_POWERGATE_XUSBC,
     sc->clk_xusb_host, sc->hwreset_xusb_host);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot powerup 'xusbc' domain\n");
  return (rv);
 }
 rv = tegra_powergate_sequence_power_up(TEGRA_POWERGATE_XUSBA,
     sc->clk_xusb_ss, sc->hwreset_xusb_ss);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot powerup 'xusba' domain\n");
  return (rv);
 }


 rv = clk_enable(sc->clk_xusb_falcon_src);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable 'xusb_falcon_src' clock\n");
  return (rv);
 }
 rv = clk_enable(sc->clk_xusb_fs_src);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable 'xusb_fs_src' clock\n");
  return (rv);
 }
 rv = clk_enable(sc->clk_xusb_hs_src);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable 'xusb_hs_src' clock\n");
  return (rv);
 }

 rv = phy_enable(sc->phy_usb2_0);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable USB2_0 phy\n");
  return (rv);
 }
 rv = phy_enable(sc->phy_usb2_1);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable USB2_1 phy\n");
  return (rv);
 }
 rv = phy_enable(sc->phy_usb2_2);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable USB2_2 phy\n");
  return (rv);
 }
 rv = phy_enable(sc->phy_usb3_0);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable USB3_0 phy\n");
  return (rv);
 }

 return (0);
}
