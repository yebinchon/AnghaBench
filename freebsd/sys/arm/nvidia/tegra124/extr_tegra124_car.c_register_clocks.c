
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra124_car_softc {int * clkdom; } ;
typedef int device_t ;


 scalar_t__ bootverbose ;
 int * clkdom_create (int ) ;
 int clkdom_dump (int *) ;
 int clkdom_finit (int *) ;
 int clkdom_unlock (int *) ;
 int clkdom_xlock (int *) ;
 struct tegra124_car_softc* device_get_softc (int ) ;
 int init_divs (struct tegra124_car_softc*,int ,int ) ;
 int init_fixeds (struct tegra124_car_softc*,int ,int ) ;
 int init_gates (struct tegra124_car_softc*,int ,int ) ;
 int init_muxes (struct tegra124_car_softc*,int ,int ) ;
 int nitems (int ) ;
 int panic (char*) ;
 int postinit_clock (struct tegra124_car_softc*) ;
 int tegra124_div_clks ;
 int tegra124_fixed_clks ;
 int tegra124_gate_clks ;
 int tegra124_init_plls (struct tegra124_car_softc*) ;
 int tegra124_mux_clks ;
 int tegra124_periph_clock (struct tegra124_car_softc*) ;
 int tegra124_super_mux_clock (struct tegra124_car_softc*) ;

__attribute__((used)) static void
register_clocks(device_t dev)
{
 struct tegra124_car_softc *sc;

 sc = device_get_softc(dev);
 sc->clkdom = clkdom_create(dev);
 if (sc->clkdom == ((void*)0))
  panic("clkdom == NULL");

 tegra124_init_plls(sc);
 init_fixeds(sc, tegra124_fixed_clks, nitems(tegra124_fixed_clks));
 init_muxes(sc, tegra124_mux_clks, nitems(tegra124_mux_clks));
 init_divs(sc, tegra124_div_clks, nitems(tegra124_div_clks));
 init_gates(sc, tegra124_gate_clks, nitems(tegra124_gate_clks));
 tegra124_periph_clock(sc);
 tegra124_super_mux_clock(sc);
 clkdom_finit(sc->clkdom);
 clkdom_xlock(sc->clkdom);
 postinit_clock(sc);
 clkdom_unlock(sc->clkdom);
 if (bootverbose)
  clkdom_dump(sc->clkdom);
}
