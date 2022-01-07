
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xhci_softc {int dev; int clk_xusb_gate; int clk_xusb_fs_src; int clk_xusb_hs_src; int clk_xusb_ss; int clk_xusb_falcon_src; int clk_xusb_host; int phy_usb3_0; int phy_usb2_2; int phy_usb2_1; int phy_usb2_0; int hwreset_xusb_ss; int hwreset_xusb_host; int supply_hvdd_usb_ss_pll_e; int supply_hvdd_usb_ss; int supply_avdd_usb_ss_pll; int supply_avdd_pll_erefe; int supply_avdd_pll_utmip; int supply_avdd_usb; int supply_dvddio_pex; int supply_avddio_pex; } ;
typedef int phandle_t ;


 int ENXIO ;
 int clk_get_by_ofw_index_prop (int ,int ,char*,int ,int *) ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int device_printf (int ,char*) ;
 int hwreset_get_by_ofw_name (int ,int ,char*,int *) ;
 int phy_get_by_ofw_name (int ,int ,char*,int *) ;
 int regulator_get_by_ofw_property (int ,int ,char*,int *) ;

__attribute__((used)) static int
get_fdt_resources(struct tegra_xhci_softc *sc, phandle_t node)
{
 int rv;

 rv = regulator_get_by_ofw_property(sc->dev, 0, "avddio-pex-supply",
     &sc->supply_avddio_pex);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot get 'avddio-pex' regulator\n");
  return (ENXIO);
 }
 rv = regulator_get_by_ofw_property(sc->dev, 0, "dvddio-pex-supply",
     &sc->supply_dvddio_pex);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot get 'dvddio-pex' regulator\n");
  return (ENXIO);
 }
 rv = regulator_get_by_ofw_property(sc->dev, 0, "avdd-usb-supply",
     &sc->supply_avdd_usb);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot get 'avdd-usb' regulator\n");
  return (ENXIO);
 }
 rv = regulator_get_by_ofw_property(sc->dev, 0, "avdd-pll-utmip-supply",
     &sc->supply_avdd_pll_utmip);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot get 'avdd-pll-utmip' regulator\n");
  return (ENXIO);
 }
 rv = regulator_get_by_ofw_property(sc->dev, 0, "avdd-pll-erefe-supply",
     &sc->supply_avdd_pll_erefe);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot get 'avdd-pll-erefe' regulator\n");
  return (ENXIO);
 }
 rv = regulator_get_by_ofw_property(sc->dev, 0, "avdd-usb-ss-pll-supply",
     &sc->supply_avdd_usb_ss_pll);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot get 'avdd-usb-ss-pll' regulator\n");
  return (ENXIO);
 }
 rv = regulator_get_by_ofw_property(sc->dev, 0, "hvdd-usb-ss-supply",
     &sc->supply_hvdd_usb_ss);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot get 'hvdd-usb-ss' regulator\n");
  return (ENXIO);
 }
 rv = regulator_get_by_ofw_property(sc->dev, 0,
     "hvdd-usb-ss-pll-e-supply", &sc->supply_hvdd_usb_ss_pll_e);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot get 'hvdd-usb-ss-pll-e' regulator\n");
  return (ENXIO);
 }

 rv = hwreset_get_by_ofw_name(sc->dev, 0, "xusb_host",
     &sc->hwreset_xusb_host);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'xusb_host' reset\n");
  return (ENXIO);
 }
 rv = hwreset_get_by_ofw_name(sc->dev, 0, "xusb_ss",
     &sc->hwreset_xusb_ss);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'xusb_ss' reset\n");
  return (ENXIO);
 }

 rv = phy_get_by_ofw_name(sc->dev, 0, "usb2-0", &sc->phy_usb2_0);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'usb2-0' phy\n");
  return (ENXIO);
 }
 rv = phy_get_by_ofw_name(sc->dev, 0, "usb2-1", &sc->phy_usb2_1);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'usb2-1' phy\n");
  return (ENXIO);
 }
 rv = phy_get_by_ofw_name(sc->dev, 0, "usb2-2", &sc->phy_usb2_2);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'usb2-2' phy\n");
  return (ENXIO);
 }
 rv = phy_get_by_ofw_name(sc->dev, 0, "usb3-0", &sc->phy_usb3_0);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'usb3-0' phy\n");
  return (ENXIO);
 }

 rv = clk_get_by_ofw_name(sc->dev, 0, "xusb_host",
     &sc->clk_xusb_host);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'xusb_host' clock\n");
  return (ENXIO);
 }
 rv = clk_get_by_ofw_name(sc->dev, 0, "xusb_falcon_src",
     &sc->clk_xusb_falcon_src);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'xusb_falcon_src' clock\n");
  return (ENXIO);
 }
 rv = clk_get_by_ofw_name(sc->dev, 0, "xusb_ss",
     &sc->clk_xusb_ss);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'xusb_ss' clock\n");
  return (ENXIO);
 }
 rv = clk_get_by_ofw_name(sc->dev, 0, "xusb_hs_src",
     &sc->clk_xusb_hs_src);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'xusb_hs_src' clock\n");
  return (ENXIO);
 }
 rv = clk_get_by_ofw_name(sc->dev, 0, "xusb_fs_src",
     &sc->clk_xusb_fs_src);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'xusb_fs_src' clock\n");
  return (ENXIO);
 }
 rv = clk_get_by_ofw_index_prop(sc->dev, 0, "freebsd,clock-xusb-gate", 0,
     &sc->clk_xusb_gate);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'xusb_gate' clock\n");
  return (ENXIO);
 }
 return (0);
}
