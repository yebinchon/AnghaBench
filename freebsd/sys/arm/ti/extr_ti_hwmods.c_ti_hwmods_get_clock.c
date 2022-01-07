
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwmod {int clock_id; int * name; } ;
typedef int phandle_t ;
typedef int device_t ;
typedef int clk_ident_t ;


 int INVALID_CLK_IDENT ;
 int OF_prop_free (char*) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ strcmp (int *,char*) ;
 int strlen (char*) ;
 int ti_get_hwmods_prop (int ,void**) ;
 struct hwmod* ti_hwmods ;

clk_ident_t
ti_hwmods_get_clock(device_t dev)
{
 phandle_t node;
 int len, l;
 char *name;
 char *buf;
 int clk;
 struct hwmod *hw;

 if ((node = ofw_bus_get_node(dev)) == 0)
  return (INVALID_CLK_IDENT);

 if ((len = ti_get_hwmods_prop(node, (void **)&name)) <= 0)
  return (INVALID_CLK_IDENT);

 buf = name;

 clk = INVALID_CLK_IDENT;
 while ((len > 0) && (clk == INVALID_CLK_IDENT)) {
  for (hw = ti_hwmods; hw->name != ((void*)0); ++hw) {
   if (strcmp(hw->name, name) == 0) {
    clk = hw->clock_id;
    break;
   }
  }


  l = strlen(name) + 1;
  name += l;
  len -= l;
 }

 if (len > 0)
  device_printf(dev, "WARNING: more than one ti,hwmod \n");

 OF_prop_free(buf);
 return (clk);
}
