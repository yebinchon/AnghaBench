
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra124_init_item {scalar_t__ frequency; scalar_t__ enable; int name; int * parent; } ;
struct tegra124_car_softc {int dev; } ;
struct clknode {int dummy; } ;


 struct tegra124_init_item* clk_init_table ;
 int clknode_enable (struct clknode*) ;
 struct clknode* clknode_find_by_name (int ) ;
 int clknode_set_freq (struct clknode*,scalar_t__,int ,int) ;
 int clknode_set_parent_by_name (struct clknode*,int *) ;
 int device_printf (int ,char*,int ,...) ;
 int nitems (struct tegra124_init_item*) ;

__attribute__((used)) static void
postinit_clock(struct tegra124_car_softc *sc)
{
 int i;
 struct tegra124_init_item *tbl;
 struct clknode *clknode;
 int rv;

 for (i = 0; i < nitems(clk_init_table); i++) {
  tbl = &clk_init_table[i];

  clknode = clknode_find_by_name(tbl->name);
  if (clknode == ((void*)0)) {
   device_printf(sc->dev, "Cannot find clock %s\n",
       tbl->name);
   continue;
  }
  if (tbl->parent != ((void*)0)) {
   rv = clknode_set_parent_by_name(clknode, tbl->parent);
   if (rv != 0) {
    device_printf(sc->dev,
        "Cannot set parent for %s (to %s): %d\n",
        tbl->name, tbl->parent, rv);
    continue;
   }
  }
  if (tbl->frequency != 0) {
   rv = clknode_set_freq(clknode, tbl->frequency, 0 , 9999);
   if (rv != 0) {
    device_printf(sc->dev,
        "Cannot set frequency for %s: %d\n",
        tbl->name, rv);
    continue;
   }
  }
  if (tbl->enable!= 0) {
   rv = clknode_enable(clknode);
   if (rv != 0) {
    device_printf(sc->dev,
        "Cannot enable %s: %d\n", tbl->name, rv);
    continue;
   }
  }
 }
}
