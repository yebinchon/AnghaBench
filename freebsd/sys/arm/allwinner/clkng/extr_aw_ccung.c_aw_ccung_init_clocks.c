
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clknode {int dummy; } ;
struct aw_ccung_softc {int n_clk_init; TYPE_1__* clk_init; int dev; } ;
struct TYPE_2__ {int name; scalar_t__ enable; int default_freq; int * parent_name; } ;


 scalar_t__ bootverbose ;
 int clknode_enable (struct clknode*) ;
 struct clknode* clknode_find_by_name (int ) ;
 int clknode_set_freq (struct clknode*,int ,int ,int ) ;
 int clknode_set_parent_by_name (struct clknode*,int *) ;
 int device_printf (int ,char*,int ,...) ;

__attribute__((used)) static void
aw_ccung_init_clocks(struct aw_ccung_softc *sc)
{
 struct clknode *clknode;
 int i, error;

 for (i = 0; i < sc->n_clk_init; i++) {
  clknode = clknode_find_by_name(sc->clk_init[i].name);
  if (clknode == ((void*)0)) {
   device_printf(sc->dev, "Cannot find clock %s\n",
       sc->clk_init[i].name);
   continue;
  }

  if (sc->clk_init[i].parent_name != ((void*)0)) {
   if (bootverbose)
    device_printf(sc->dev, "Setting %s as parent for %s\n",
        sc->clk_init[i].parent_name,
        sc->clk_init[i].name);
   error = clknode_set_parent_by_name(clknode,
       sc->clk_init[i].parent_name);
   if (error != 0) {
    device_printf(sc->dev,
        "Cannot set parent to %s for %s\n",
        sc->clk_init[i].parent_name,
        sc->clk_init[i].name);
    continue;
   }
  }
  if (sc->clk_init[i].default_freq != 0) {
   if (bootverbose)
    device_printf(sc->dev,
        "Setting freq %ju for %s\n",
        sc->clk_init[i].default_freq,
        sc->clk_init[i].name);
   error = clknode_set_freq(clknode,
       sc->clk_init[i].default_freq, 0 , 0);
   if (error != 0) {
    device_printf(sc->dev,
        "Cannot set frequency for %s to %ju\n",
        sc->clk_init[i].name,
        sc->clk_init[i].default_freq);
    continue;
   }
  }
  if (sc->clk_init[i].enable) {
   error = clknode_enable(clknode);
   if (error != 0) {
    device_printf(sc->dev,
        "Cannot enable %s\n",
        sc->clk_init[i].name);
    continue;
   }
  }
 }
}
