
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phy_handle ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;


 scalar_t__ OF_getencprop (int ,char*,void*,int) ;
 int OF_node_from_xref (int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static phandle_t
awg_get_phy_node(device_t dev)
{
 phandle_t node;
 pcell_t phy_handle;

 node = ofw_bus_get_node(dev);
 if (OF_getencprop(node, "phy-handle", (void *)&phy_handle,
     sizeof(phy_handle)) <= 0)
  return (0);

 return (OF_node_from_xref(phy_handle));
}
