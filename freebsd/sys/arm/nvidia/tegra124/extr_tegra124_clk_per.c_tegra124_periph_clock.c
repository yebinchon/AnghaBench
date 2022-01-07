
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra124_car_softc {int clkdom; } ;


 int nitems (int *) ;
 int panic (char*) ;
 int * periph_def ;
 int periph_register (int ,int *) ;
 int * pgate_def ;
 int pgate_register (int ,int *) ;

void
tegra124_periph_clock(struct tegra124_car_softc *sc)
{
 int i, rv;

 for (i = 0; i < nitems(periph_def); i++) {
  rv = periph_register(sc->clkdom, &periph_def[i]);
  if (rv != 0)
   panic("tegra124_periph_register failed");
 }
 for (i = 0; i < nitems(pgate_def); i++) {
  rv = pgate_register(sc->clkdom, &pgate_def[i]);
  if (rv != 0)
   panic("tegra124_pgate_register failed");
 }

}
