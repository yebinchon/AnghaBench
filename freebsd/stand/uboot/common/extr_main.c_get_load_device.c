
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d_unit; } ;
struct disk_devdesc {int d_slice; int d_partition; TYPE_1__ dd; } ;


 int DEV_TYP_NONE ;
 int DEV_TYP_STOR ;
 int D_PARTWILD ;
 int D_SLICEWILD ;
 scalar_t__ disk_parsedev (struct disk_devdesc*,char const*,int *) ;
 char* get_device_type (char*,int*) ;
 int isdigit (char const) ;
 int printf (char*,...) ;
 size_t strcspn (char const*,char*) ;
 size_t strlen (char const*) ;
 int strtol (char const*,char**,int) ;
 int strtoul (char const*,char**,int) ;
 char* ub_env_get (char*) ;

__attribute__((used)) static void
get_load_device(int *type, int *unit, int *slice, int *partition)
{
 struct disk_devdesc dev;
 char *devstr;
 const char *p;
 char *endp;

 *type = DEV_TYP_NONE;
 *unit = -1;
 *slice = D_SLICEWILD;
 *partition = D_PARTWILD;

 devstr = ub_env_get("loaderdev");
 if (devstr == ((void*)0)) {
  printf("U-Boot env: loaderdev not set, will probe all devices.\n");
  return;
 }
 printf("U-Boot env: loaderdev='%s'\n", devstr);

 p = get_device_type(devstr, type);
 if (*type & DEV_TYP_STOR) {
  size_t len = strlen(p);
  if (strcspn(p, " .") == len && strcspn(p, ":") >= len - 1 &&
      disk_parsedev(&dev, p, ((void*)0)) == 0) {
   *unit = dev.dd.d_unit;
   *slice = dev.d_slice;
   *partition = dev.d_partition;
   return;
  }
 }


 while (*p == ' ')
  p++;


 if ((*type == DEV_TYP_NONE) || (*p == '\0')) {
  return;
 }


 if (!isdigit(*p)) {
  *type = DEV_TYP_NONE;
  return;
 }


 *unit = strtol(p, &endp, 10);
 p = endp;


 if (*p == '\0') {
  return;
 }


 if (*p != ':') {
  *type = DEV_TYP_NONE;
  *unit = -1;
  return;
 }

 p++;


 if ('\0' == *p )
  return;


 if (!(*type & DEV_TYP_STOR)) {
  *type = DEV_TYP_NONE;
  *unit = -1;
  return;
 }

 *slice = strtoul(p, &endp, 10);


 if (p == endp) {
  *type = DEV_TYP_NONE;
  *unit = -1;
  *slice = D_SLICEWILD;
  return;
 }

 p = endp;


 if (*p == '\0')
  return;


 if (*p != '.') {
  *type = DEV_TYP_NONE;
  *unit = -1;
  *slice = D_SLICEWILD;
  return;
 }

 p++;


 if (*p == '\0')
  return;

 *partition = strtol(p, &endp, 10);
 p = endp;


 if (*endp == '\0')
  return;


 *type = DEV_TYP_NONE;
 *unit = -1;
 *slice = D_SLICEWILD;
 *partition = D_PARTWILD;
}
