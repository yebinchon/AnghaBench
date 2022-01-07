
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_long ;
struct devmap_entry {void* pd_size; void* pd_pa; int pd_va; } ;
typedef int phandle_t ;


 int EINVAL ;
 int ENOENT ;
 int ENXIO ;
 int MV_CESA_SRAM_BASE ;
 int OF_finddevice (char*) ;
 int fdt_find_compatible (int ,char*,int ) ;
 scalar_t__ fdt_regsize (int ,void**,void**) ;
 scalar_t__ ofw_bus_node_is_compatible (int ,char*) ;

__attribute__((used)) static int
platform_sram_devmap(struct devmap_entry *map)
{
 phandle_t child, root;
 u_long base, size;



 if ((root = OF_finddevice("/")) == 0)
  return (ENXIO);

 if ((child = OF_finddevice("/sram")) != 0)
  if (ofw_bus_node_is_compatible(child, "mrvl,cesa-sram") ||
      ofw_bus_node_is_compatible(child, "mrvl,scratchpad"))
   goto moveon;

 if ((child = fdt_find_compatible(root, "mrvl,cesa-sram", 0)) == 0 &&
     (child = fdt_find_compatible(root, "mrvl,scratchpad", 0)) == 0)
   goto out;

moveon:
 if (fdt_regsize(child, &base, &size) != 0)
  return (EINVAL);

 map->pd_va = MV_CESA_SRAM_BASE;
 map->pd_pa = base;
 map->pd_size = size;

 return (0);
out:
 return (ENOENT);

}
