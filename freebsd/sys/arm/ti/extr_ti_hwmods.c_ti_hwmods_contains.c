
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int OF_prop_free (char*) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char*) ;
 int ti_get_hwmods_prop (int ,void**) ;

int ti_hwmods_contains(device_t dev, const char *hwmod)
{
 phandle_t node;
 int len, l;
 char *name;
 char *buf;
 int result;

 if ((node = ofw_bus_get_node(dev)) == 0)
  return (0);

 if ((len = ti_get_hwmods_prop(node, (void **)&name)) <= 0)
  return (0);

 buf = name;

 result = 0;
 while (len > 0) {
  if (strcmp(name, hwmod) == 0) {
   result = 1;
   break;
  }


  l = strlen(name) + 1;
  name += l;
  len -= l;
 }

 OF_prop_free(buf);

 return (result);
}
