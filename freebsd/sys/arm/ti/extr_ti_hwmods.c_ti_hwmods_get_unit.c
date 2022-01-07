
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int OF_prop_free (char*) ;
 int ofw_bus_get_node (int ) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;
 scalar_t__ strtoul (char*,int *,int) ;
 int ti_get_hwmods_prop (int ,void**) ;

int
ti_hwmods_get_unit(device_t dev, const char *hwmod)
{
 phandle_t node;
 int l, len, hwmodlen, result;
 char *name;
 char *buf;

 if ((node = ofw_bus_get_node(dev)) == 0)
  return (0);

 if ((len = ti_get_hwmods_prop(node, (void **)&name)) <= 0)
  return (0);

 buf = name;
 hwmodlen = strlen(hwmod);
 result = 0;
 while (len > 0) {
  if (strncmp(name, hwmod, hwmodlen) == 0) {
                        result = (int)strtoul(name + hwmodlen, ((void*)0), 10);
   break;
  }

  l = strlen(name) + 1;
  name += l;
  len -= l;
 }

 OF_prop_free(buf);
 return (result);
}
