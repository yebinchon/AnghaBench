
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int ofw_bus_get_node (int ) ;

__attribute__((used)) static phandle_t
a37x0_gpio_get_node(device_t bus, device_t dev)
{

 return (ofw_bus_get_node(bus));
}
