
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra124_car_softc {int clkdom; } ;


 int nitems (int *) ;
 int panic (char*) ;
 int * super_mux_def ;
 int super_mux_register (int ,int *) ;

void
tegra124_super_mux_clock(struct tegra124_car_softc *sc)
{
 int i, rv;

 for (i = 0; i < nitems(super_mux_def); i++) {
  rv = super_mux_register(sc->clkdom, &super_mux_def[i]);
  if (rv != 0)
   panic("super_mux_register failed");
 }

}
