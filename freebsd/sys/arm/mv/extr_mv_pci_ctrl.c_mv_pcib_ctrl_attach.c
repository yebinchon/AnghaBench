
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_attach (int ) ;
 int mv_pcib_ofw_bus_attach (int ) ;

__attribute__((used)) static int
mv_pcib_ctrl_attach(device_t dev)
{
 int err;

 err = mv_pcib_ofw_bus_attach(dev);
 if (err != 0)
  return (err);

 return (bus_generic_attach(dev));
}
