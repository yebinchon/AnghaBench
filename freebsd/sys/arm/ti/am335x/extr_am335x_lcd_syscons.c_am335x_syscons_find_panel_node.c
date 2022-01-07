
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;


 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 scalar_t__ ofw_bus_node_is_compatible (scalar_t__,char*) ;

__attribute__((used)) static phandle_t
am335x_syscons_find_panel_node(phandle_t start)
{
 phandle_t child;
 phandle_t result;

 for (child = OF_child(start); child != 0; child = OF_peer(child)) {
  if (ofw_bus_node_is_compatible(child, "ti,am335x-lcd"))
   return (child);
  if ((result = am335x_syscons_find_panel_node(child)))
   return (result);
 }

 return (0);
}
