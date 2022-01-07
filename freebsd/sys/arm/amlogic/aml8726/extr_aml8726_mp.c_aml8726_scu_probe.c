
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 scalar_t__ ofw_bus_is_compatible (int ,scalar_t__) ;
 scalar_t__* scu_compatible ;

__attribute__((used)) static int
aml8726_scu_probe(device_t dev)
{
 int i;

 for (i = 0; scu_compatible[i]; i++)
  if (ofw_bus_is_compatible(dev, scu_compatible[i]))
   break;

 if (!scu_compatible[i])
  return (ENXIO);

 device_set_desc(dev, "ARM Snoop Control Unit");

 return (BUS_PROBE_DEFAULT);
}
