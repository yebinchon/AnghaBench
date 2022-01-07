
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int FDT_TYPE_LEN ;
 scalar_t__ OF_getprop (int ,char*,char*,int) ;
 scalar_t__ OF_getproplen (int ,char*) ;
 scalar_t__ strncasecmp (char*,char const*,int) ;

int
mv_fdt_is_type(phandle_t node, const char *typestr)
{

 char type[64];

 if (OF_getproplen(node, "device_type") <= 0)
  return (0);

 if (OF_getprop(node, "device_type", type, 64) < 0)
  return (0);

 if (strncasecmp(type, typestr, 64) == 0)

  return (1);

 return (0);

}
