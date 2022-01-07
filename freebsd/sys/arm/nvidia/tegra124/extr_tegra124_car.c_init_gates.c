
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra124_car_softc {int clkdom; } ;
struct clk_gate_def {int dummy; } ;


 int clknode_gate_register (int ,struct clk_gate_def*) ;
 int panic (char*) ;

__attribute__((used)) static void
init_gates(struct tegra124_car_softc *sc, struct clk_gate_def *clks, int nclks)
{
 int i, rv;


 for (i = 0; i < nclks; i++) {
  rv = clknode_gate_register(sc->clkdom, clks + i);
  if (rv != 0)
   panic("clk_gate_register failed");
 }
}
