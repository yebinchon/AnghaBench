
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra124_pmc_softc {int dev; } ;
typedef enum tegra_powergate_id { ____Placeholder_tegra_powergate_id } tegra_powergate_id ;


 int DELAY (int) ;
 int device_printf (int ,char*,...) ;
 struct tegra124_pmc_softc* tegra124_pmc_get_sc () ;
 int tegra124_pmc_set_powergate (struct tegra124_pmc_softc*,int,int ) ;
 int tegra_powergate_is_powered (int) ;

int
tegra_powergate_power_off(enum tegra_powergate_id id)
{
 struct tegra124_pmc_softc *sc;
 int rv, i;

 sc = tegra124_pmc_get_sc();

 rv = tegra124_pmc_set_powergate(sc, id, 0);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot set powergate: %d\n", id);
  return (rv);
 }
 for (i = 100; i > 0; i--) {
  if (!tegra_powergate_is_powered(id))
   break;
  DELAY(1);
 }
 if (i <= 0)
  device_printf(sc->dev, "Timeout when waiting on power off\n");

 return (rv);
}
