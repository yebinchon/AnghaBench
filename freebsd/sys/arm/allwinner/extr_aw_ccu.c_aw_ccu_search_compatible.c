
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_compat_data {int * ocd_str; } ;
typedef int phandle_t ;


 int OF_finddevice (char*) ;
 struct ofw_compat_data* compat_data ;
 scalar_t__ ofw_bus_node_is_compatible (int ,int *) ;

__attribute__((used)) static const struct ofw_compat_data *
aw_ccu_search_compatible(void)
{
 const struct ofw_compat_data *compat;
 phandle_t root;

 root = OF_finddevice("/");
 for (compat = compat_data; compat->ocd_str != ((void*)0); compat++)
  if (ofw_bus_node_is_compatible(root, compat->ocd_str))
   break;

 return (compat);
}
