
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_compat_data {scalar_t__ ocd_data; int * ocd_str; } ;
typedef int phandle_t ;
typedef int driver_t ;
typedef int device_t ;


 int * BUS_ADD_CHILD (int ,int ,char*,int) ;
 int DPRINTF (char*,int *,int ) ;
 int OF_finddevice (char*) ;
 struct ofw_compat_data* compat_data ;
 int * device_find_child (int ,char*,int) ;
 int device_printf (int ,char*) ;
 scalar_t__ ofw_bus_node_is_compatible (int ,int *) ;

__attribute__((used)) static void
bcm2835_cpufreq_identify(driver_t *driver, device_t parent)
{
 const struct ofw_compat_data *compat;
 phandle_t root;

 root = OF_finddevice("/");
 for (compat = compat_data; compat->ocd_str != ((void*)0); compat++)
  if (ofw_bus_node_is_compatible(root, compat->ocd_str))
   break;

 if (compat->ocd_data == 0)
  return;

 DPRINTF("driver=%p, parent=%p\n", driver, parent);
 if (device_find_child(parent, "bcm2835_cpufreq", -1) != ((void*)0))
  return;
 if (BUS_ADD_CHILD(parent, 0, "bcm2835_cpufreq", -1) == ((void*)0))
  device_printf(parent, "add child failed\n");
}
