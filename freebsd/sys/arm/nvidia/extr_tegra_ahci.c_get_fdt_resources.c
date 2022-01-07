
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_ahci_sc {int dev; int clk_pll_e; int clk_cml; int clk_sata_oob; int clk_sata; int phy; int hwreset_sata_cold; int hwreset_sata_oob; int hwreset_sata; int supply_target_12v; int supply_target_5v; int supply_avdd; int supply_vddio; int supply_hvdd; } ;
typedef int phandle_t ;


 int ENXIO ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int device_printf (int ,char*) ;
 int hwreset_get_by_ofw_name (int ,int ,char*,int *) ;
 int phy_get_by_ofw_name (int ,int ,char*,int *) ;
 int regulator_get_by_ofw_property (int ,int ,char*,int *) ;

__attribute__((used)) static int
get_fdt_resources(struct tegra_ahci_sc *sc, phandle_t node)
{
 int rv;


 rv = regulator_get_by_ofw_property(sc->dev, 0, "hvdd-supply",
     &sc->supply_hvdd );
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'hvdd' regulator\n");
  return (ENXIO);
 }
 rv = regulator_get_by_ofw_property(sc->dev, 0, "vddio-supply",
     &sc->supply_vddio);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'vddio' regulator\n");
  return (ENXIO);
 }
 rv = regulator_get_by_ofw_property(sc->dev, 0, "avdd-supply",
     &sc->supply_avdd);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'avdd' regulator\n");
  return (ENXIO);
 }
 rv = regulator_get_by_ofw_property(sc->dev, 0, "target-5v-supply",
     &sc->supply_target_5v);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'target-5v' regulator\n");
  return (ENXIO);
 }
 rv = regulator_get_by_ofw_property(sc->dev, 0, "target-12v-supply",
     &sc->supply_target_12v);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'target-12v' regulator\n");
  return (ENXIO);
 }

 rv = hwreset_get_by_ofw_name(sc->dev, 0, "sata", &sc->hwreset_sata );
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'sata' reset\n");
  return (ENXIO);
 }
 rv = hwreset_get_by_ofw_name(sc->dev, 0, "sata-oob",
     &sc->hwreset_sata_oob);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'sata oob' reset\n");
  return (ENXIO);
 }
 rv = hwreset_get_by_ofw_name(sc->dev, 0, "sata-cold",
     &sc->hwreset_sata_cold);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'sata cold' reset\n");
  return (ENXIO);
 }

 rv = phy_get_by_ofw_name(sc->dev, 0, "sata-0", &sc->phy);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'sata' phy\n");
  return (ENXIO);
 }

 rv = clk_get_by_ofw_name(sc->dev, 0, "sata", &sc->clk_sata);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'sata' clock\n");
  return (ENXIO);
 }
 rv = clk_get_by_ofw_name(sc->dev, 0, "sata-oob", &sc->clk_sata_oob);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'sata oob' clock\n");
  return (ENXIO);
 }
 rv = clk_get_by_ofw_name(sc->dev, 0, "cml1", &sc->clk_cml);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'cml1' clock\n");
  return (ENXIO);
 }
 rv = clk_get_by_ofw_name(sc->dev, 0, "pll_e", &sc->clk_pll_e);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot get 'pll_e' clock\n");
  return (ENXIO);
 }
 return (0);
}
