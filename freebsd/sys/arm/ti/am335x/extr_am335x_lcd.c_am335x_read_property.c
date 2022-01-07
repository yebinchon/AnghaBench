
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;
typedef int cell ;


 int ENXIO ;
 scalar_t__ OF_getencprop (int ,char const*,int *,int) ;
 int device_printf (int ,char*,char const*) ;

__attribute__((used)) static int
am335x_read_property(device_t dev, phandle_t node, const char *name, uint32_t *val)
{
 pcell_t cell;

 if ((OF_getencprop(node, name, &cell, sizeof(cell))) <= 0) {
  device_printf(dev, "missing '%s' attribute in LCD panel info\n",
      name);
  return (ENXIO);
 }

 *val = cell;

 return (0);
}
