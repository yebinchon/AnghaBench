
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_ahci_sc {int dev; int phy; int hwreset_sata_oob; int hwreset_sata_cold; int clk_pll_e; int clk_cml; int clk_sata_oob; int hwreset_sata; int clk_sata; int supply_target_12v; int supply_target_5v; int supply_avdd; int supply_vddio; int supply_hvdd; } ;


 int TEGRA_POWERGATE_SAX ;
 int clk_enable (int ) ;
 int clk_stop (int ) ;
 int device_printf (int ,char*) ;
 int hwreset_assert (int ) ;
 int hwreset_deassert (int ) ;
 int phy_enable (int ) ;
 int regulator_enable (int ) ;
 int tegra_powergate_power_off (int ) ;
 int tegra_powergate_sequence_power_up (int ,int ,int ) ;

__attribute__((used)) static int
enable_fdt_resources(struct tegra_ahci_sc *sc)
{
 int rv;

 rv = regulator_enable(sc->supply_hvdd);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable  'hvdd' regulator\n");
  return (rv);
 }
 rv = regulator_enable(sc->supply_vddio);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable  'vddio' regulator\n");
  return (rv);
 }
 rv = regulator_enable(sc->supply_avdd);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable  'avdd' regulator\n");
  return (rv);
 }
 rv = regulator_enable(sc->supply_target_5v);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable  'target-5v' regulator\n");
  return (rv);
 }
 rv = regulator_enable(sc->supply_target_12v);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable  'sc->target-12v' regulator\n");
  return (rv);
 }


 clk_stop(sc->clk_sata);
 clk_stop(sc->clk_sata_oob);
 tegra_powergate_power_off(TEGRA_POWERGATE_SAX);

 rv = hwreset_assert(sc->hwreset_sata);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot assert 'sata' reset\n");
  return (rv);
 }
 rv = hwreset_assert(sc->hwreset_sata_oob);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot assert 'sata oob' reset\n");
  return (rv);
 }

 rv = hwreset_assert(sc->hwreset_sata_cold);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot assert 'sata cold' reset\n");
  return (rv);
 }
 rv = tegra_powergate_sequence_power_up(TEGRA_POWERGATE_SAX,
     sc->clk_sata, sc->hwreset_sata);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable 'SAX' powergate\n");
  return (rv);
 }

 rv = clk_enable(sc->clk_sata_oob);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable 'sata oob' clock\n");
  return (rv);
 }
 rv = clk_enable(sc->clk_cml);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable 'cml' clock\n");
  return (rv);
 }
 rv = clk_enable(sc->clk_pll_e);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable 'pll e' clock\n");
  return (rv);
 }

 rv = hwreset_deassert(sc->hwreset_sata_cold);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot unreset 'sata cold' reset\n");
  return (rv);
 }
 rv = hwreset_deassert(sc->hwreset_sata_oob);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot unreset 'sata oob' reset\n");
  return (rv);
 }

 rv = phy_enable(sc->phy);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable SATA phy\n");
  return (rv);
 }

 return (0);
}
