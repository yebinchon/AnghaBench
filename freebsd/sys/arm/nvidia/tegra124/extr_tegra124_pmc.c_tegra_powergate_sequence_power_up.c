
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra124_pmc_softc {int dev; } ;
typedef int hwreset_t ;
typedef enum tegra_powergate_id { ____Placeholder_tegra_powergate_id } tegra_powergate_id ;
typedef int clk_t ;


 int DELAY (int) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_stop (int ) ;
 int device_printf (int ,char*) ;
 int hwreset_assert (int ) ;
 int hwreset_deassert (int ) ;
 struct tegra124_pmc_softc* tegra124_pmc_get_sc () ;
 int tegra_powergate_power_off (int) ;
 int tegra_powergate_power_on (int) ;
 int tegra_powergate_remove_clamping (int) ;

int
tegra_powergate_sequence_power_up(enum tegra_powergate_id id, clk_t clk,
    hwreset_t rst)
{
 struct tegra124_pmc_softc *sc;
 int rv;

 sc = tegra124_pmc_get_sc();

 rv = hwreset_assert(rst);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot assert reset\n");
  return (rv);
 }

 rv = clk_stop(clk);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot stop clock\n");
  goto clk_fail;
 }

 rv = tegra_powergate_power_on(id);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot power on powergate\n");
  goto clk_fail;
 }

 rv = clk_enable(clk);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable clock\n");
  goto clk_fail;
 }
 DELAY(20);

 rv = tegra_powergate_remove_clamping(id);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot remove clamping\n");
  goto fail;
 }
 rv = hwreset_deassert(rst);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot unreset reset\n");
  goto fail;
 }
 return 0;

fail:
 clk_disable(clk);
clk_fail:
 hwreset_assert(rst);
 tegra_powergate_power_off(id);
 return (rv);
}
