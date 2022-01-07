
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra124_car_softc {int clkdom; } ;


 int config_utmi_pll (struct tegra124_car_softc*) ;
 int nitems (scalar_t__) ;
 int panic (char*) ;
 scalar_t__ pll_clks ;
 int pll_register (int ,scalar_t__) ;

void
tegra124_init_plls(struct tegra124_car_softc *sc)
{
 int i, rv;

 for (i = 0; i < nitems(pll_clks); i++) {
  rv = pll_register(sc->clkdom, pll_clks + i);
  if (rv != 0)
   panic("pll_register failed");
 }
 config_utmi_pll(sc);

}
