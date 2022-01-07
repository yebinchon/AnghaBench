
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int driver_t ;
typedef int device_t ;


 int * BUS_ADD_CHILD (int ,int ,char*,int) ;
 int OF_finddevice (char*) ;
 int * device_find_child (int ,char*,int) ;
 int device_printf (int ,char*) ;
 int ofw_bus_node_is_compatible (int ,char*) ;

__attribute__((used)) static void
tegra124_coretemp_identify(driver_t *driver, device_t parent)
{
 phandle_t root;

 root = OF_finddevice("/");
 if (!ofw_bus_node_is_compatible(root, "nvidia,tegra124"))
  return;
 if (device_find_child(parent, "tegra124_coretemp", -1) != ((void*)0))
  return;
 if (BUS_ADD_CHILD(parent, 0, "tegra124_coretemp", -1) == ((void*)0))
  device_printf(parent, "add child failed\n");
}
