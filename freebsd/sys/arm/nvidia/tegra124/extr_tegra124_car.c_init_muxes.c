
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra124_car_softc {int clkdom; } ;
struct clk_mux_def {int dummy; } ;


 int clknode_mux_register (int ,struct clk_mux_def*) ;
 int panic (char*) ;

__attribute__((used)) static void
init_muxes(struct tegra124_car_softc *sc, struct clk_mux_def *clks, int nclks)
{
 int i, rv;


 for (i = 0; i < nclks; i++) {
  rv = clknode_mux_register(sc->clkdom, clks + i);
  if (rv != 0)
   panic("clk_mux_register failed");
 }
}
