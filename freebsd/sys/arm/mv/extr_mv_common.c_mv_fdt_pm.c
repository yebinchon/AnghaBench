
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int phandle_t ;
struct TYPE_2__ {int mask; int * compat; } ;


 int CPU_PM_CTRL ;
 int dev_mask ;
 TYPE_1__* fdt_pm_mask_table ;
 int ofw_bus_node_is_compatible (int ,int *) ;
 int read_cpu_ctrl (int ) ;

int
mv_fdt_pm(phandle_t node)
{
 uint32_t cpu_pm_ctrl;
 int i, ena, compat;

 ena = 1;
 cpu_pm_ctrl = read_cpu_ctrl(CPU_PM_CTRL);
 for (i = 0; fdt_pm_mask_table[i].compat != ((void*)0); i++) {
  if (dev_mask & (1 << i))
   continue;

  compat = ofw_bus_node_is_compatible(node,
      fdt_pm_mask_table[i].compat);
  if (compat && (~cpu_pm_ctrl & fdt_pm_mask_table[i].mask)) {
   dev_mask |= (1 << i);
   ena = 0;
   break;
  } else if (compat) {
   dev_mask |= (1 << i);
   break;
  }

 }

 return (ena);
}
