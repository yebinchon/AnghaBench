
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscon {int dummy; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 int rk3328_set_delays (struct syscon*,int ) ;
 int rk3399_set_delays (struct syscon*,int ) ;
 scalar_t__ syscon_get_by_ofw_property (int ,int ,char*,struct syscon**) ;

__attribute__((used)) static int
if_dwc_rk_init(device_t dev)
{
 phandle_t node;
 struct syscon *grf = ((void*)0);

 node = ofw_bus_get_node(dev);
 if (OF_hasprop(node, "rockchip,grf") &&
     syscon_get_by_ofw_property(dev, node,
     "rockchip,grf", &grf) != 0) {
  device_printf(dev, "cannot get grf driver handle\n");
  return (ENXIO);
 }
 return (0);
}
