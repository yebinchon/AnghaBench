
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ofw_bus_status_ok_cb (int ) ;
 int stub1 (int ) ;

int
ofw_bus_status_okay(device_t dev)
{
 if (ofw_bus_status_ok_cb == ((void*)0))
  return (0);

 return ((*ofw_bus_status_ok_cb)(dev));
}
