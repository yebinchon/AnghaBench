
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;
typedef int device_t ;


 scalar_t__ OF_hasprop (scalar_t__,char*) ;
 int OF_parent (scalar_t__) ;
 scalar_t__ awg_get_phy_node (int ) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 scalar_t__ ofw_bus_node_is_compatible (int ,char*) ;

__attribute__((used)) static bool
awg_has_internal_phy(device_t dev)
{
 phandle_t node, phy_node;

 node = ofw_bus_get_node(dev);

 if (OF_hasprop(node, "allwinner,use-internal-phy"))
  return (1);

 phy_node = awg_get_phy_node(dev);
 return (phy_node != 0 && ofw_bus_node_is_compatible(OF_parent(phy_node),
     "allwinner,sun8i-h3-mdio-internal") != 0);
}
