
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcib_softc {int dev; int clk_pll_e; int clk_cml; int clk_afi; int hwreset_afi; int hwreset_pex; int clk_pex; int supply_avdd_pll_erefe; int supply_vddio_pex_ctl; int supply_hvdd_pex_pll_e; int supply_hvdd_pex; int supply_avdd_pex_pll; int supply_dvddio_pex; int supply_avddio_pex; int hwreset_pcie_x; } ;


 int TEGRA_POWERGATE_PCX ;
 int clk_enable (int ) ;
 int device_printf (int ,char*) ;
 int hwreset_assert (int ) ;
 int hwreset_deassert (int ) ;
 int regulator_enable (int ) ;
 int tegra_powergate_power_off (int ) ;
 int tegra_powergate_sequence_power_up (int ,int ,int ) ;

__attribute__((used)) static int
tegra_pcib_enable_fdt_resources(struct tegra_pcib_softc *sc)
{
 int rv;

 rv = hwreset_assert(sc->hwreset_pcie_x);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot assert 'pcie_x' reset\n");
  return (rv);
 }
 rv = hwreset_assert(sc->hwreset_afi);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot assert  'afi' reset\n");
  return (rv);
 }
 rv = hwreset_assert(sc->hwreset_pex);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot assert  'pex' reset\n");
  return (rv);
 }

 tegra_powergate_power_off(TEGRA_POWERGATE_PCX);


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
 rv = regulator_enable(sc->supply_avdd_pex_pll);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable 'avdd-pex-pll' regulator\n");
  return (rv);
 }
 rv = regulator_enable(sc->supply_hvdd_pex);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable 'hvdd-pex-supply' regulator\n");
  return (rv);
 }
 rv = regulator_enable(sc->supply_hvdd_pex_pll_e);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable 'hvdd-pex-pll-e-supply' regulator\n");
  return (rv);
 }
 rv = regulator_enable(sc->supply_vddio_pex_ctl);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable 'vddio-pex-ctl' regulator\n");
  return (rv);
 }
 rv = regulator_enable(sc->supply_avdd_pll_erefe);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot enable 'avdd-pll-erefe-supply' regulator\n");
  return (rv);
 }

 rv = tegra_powergate_sequence_power_up(TEGRA_POWERGATE_PCX,
     sc->clk_pex, sc->hwreset_pex);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable 'PCX' powergate\n");
  return (rv);
 }

 rv = hwreset_deassert(sc->hwreset_afi);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot unreset 'afi' reset\n");
  return (rv);
 }

 rv = clk_enable(sc->clk_afi);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable 'afi' clock\n");
  return (rv);
 }
 rv = clk_enable(sc->clk_cml);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable 'cml' clock\n");
  return (rv);
 }
 rv = clk_enable(sc->clk_pll_e);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable 'pll_e' clock\n");
  return (rv);
 }
 return (0);
}
