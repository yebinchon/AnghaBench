
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ twl_is_4030 (int ) ;
 scalar_t__ twl_is_6025 (int ) ;
 scalar_t__ twl_is_6030 (int ) ;

__attribute__((used)) static int
twl_clks_probe(device_t dev)
{
 if (twl_is_4030(device_get_parent(dev)))
  device_set_desc(dev, "TI TWL4030 PMIC External Clocks");
 else if (twl_is_6025(device_get_parent(dev)) ||
          twl_is_6030(device_get_parent(dev)))
  device_set_desc(dev, "TI TWL6025/TWL6030 PMIC External Clocks");
 else
  return (ENXIO);

 return (0);
}
