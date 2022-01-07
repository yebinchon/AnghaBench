
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int OF_finddevice (char const*) ;
 int fdt_find_compatible (int,char const*,int) ;
 scalar_t__ fdt_is_compatible_strict (int,char const*) ;

__attribute__((used)) static phandle_t
find_node_for_device(const char *device, const char **compatible)
{
 int i;
 phandle_t node;





 if ((node = OF_finddevice(device)) != -1)
  for (i = 0; compatible[i]; i++)
   if (fdt_is_compatible_strict(node, compatible[i]))
    return node;





 for (i = 0; compatible[i]; i++) {
  if ((node = OF_finddevice("/soc")) == -1)
   return (0);

  if ((node = fdt_find_compatible(node, compatible[i], 1)) != 0)
   return node;
 }

 return (0);
}
