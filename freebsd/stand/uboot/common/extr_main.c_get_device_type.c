
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_type {int type; int name; } ;


 int DEV_TYP_NONE ;
 struct device_type* device_types ;
 int nitems (struct device_type*) ;
 int printf (char*,char const*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,int) ;

__attribute__((used)) static const char *
get_device_type(const char *devstr, int *devtype)
{
 int i;
 int namelen;
 struct device_type *dt;

 if (devstr) {
  for (i = 0; i < nitems(device_types); i++) {
   dt = &device_types[i];
   namelen = strlen(dt->name);
   if (strncmp(dt->name, devstr, namelen) == 0) {
    *devtype = dt->type;
    return (devstr + namelen);
   }
  }
  printf("Unknown device type '%s'\n", devstr);
 }

 *devtype = DEV_TYP_NONE;
 return (((void*)0));
}
