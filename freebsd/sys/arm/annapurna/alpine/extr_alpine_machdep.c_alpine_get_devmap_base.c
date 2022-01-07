
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int bus_addr_t ;


 int ENXIO ;
 int OF_finddevice (char*) ;
 int fdt_find_compatible (int,char*,int) ;
 int fdt_get_range (int,int ,int *,int *) ;

__attribute__((used)) static int
alpine_get_devmap_base(bus_addr_t *pa, bus_addr_t *size)
{
 phandle_t node;

 if ((node = OF_finddevice("/")) == -1)
  return (ENXIO);

 if ((node = fdt_find_compatible(node, "simple-bus", 1)) == 0)
  return (ENXIO);

 return fdt_get_range(node, 0, pa, size);
}
