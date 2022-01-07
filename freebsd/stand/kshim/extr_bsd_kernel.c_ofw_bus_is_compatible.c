
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ofw_bus_is_compatible_cb (int ,char*) ;
 int stub1 (int ,char*) ;

int
ofw_bus_is_compatible(device_t dev, char *name)
{
 if (ofw_bus_is_compatible_cb == ((void*)0))
  return (0);

 return ((*ofw_bus_is_compatible_cb)(dev, name));
}
