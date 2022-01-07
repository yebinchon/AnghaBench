
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__* cpucfg_compatible ;
 int device_set_desc (int ,char*) ;
 scalar_t__ ofw_bus_is_compatible (int ,scalar_t__) ;

__attribute__((used)) static int
aml8726_cpucfg_probe(device_t dev)
{
 int i;

 for (i = 0; cpucfg_compatible[i]; i++)
  if (ofw_bus_is_compatible(dev, cpucfg_compatible[i]))
   break;

 if (!cpucfg_compatible[i])
  return (ENXIO);

 device_set_desc(dev, "Amlogic CPU Config");

 return (BUS_PROBE_DEFAULT);
}
