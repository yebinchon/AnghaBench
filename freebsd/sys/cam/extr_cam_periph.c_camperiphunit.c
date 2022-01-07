
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int target_id_t ;
struct periph_driver {char* driver_name; } ;
typedef int pathbuf ;
typedef int path_id_t ;
typedef int lun_id_t ;


 int camperiphnextunit (struct periph_driver*,int,int,int,int,int) ;
 scalar_t__ resource_find_dev (int*,char const*,int*,int *,int *) ;
 scalar_t__ resource_int_value (char const*,int,char*,int*) ;
 scalar_t__ resource_string_value (char const*,int,char*,char const**) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static u_int
camperiphunit(struct periph_driver *p_drv, path_id_t pathid,
       target_id_t target, lun_id_t lun)
{
 u_int unit;
 int wired, i, val, dunit;
 const char *dname, *strval;
 char pathbuf[32], *periph_name;

 periph_name = p_drv->driver_name;
 snprintf(pathbuf, sizeof(pathbuf), "scbus%d", pathid);
 unit = 0;
 i = 0;
 dname = periph_name;
 for (wired = 0; resource_find_dev(&i, dname, &dunit, ((void*)0), ((void*)0)) == 0;
      wired = 0) {
  if (resource_string_value(dname, dunit, "at", &strval) == 0) {
   if (strcmp(strval, pathbuf) != 0)
    continue;
   wired++;
  }
  if (resource_int_value(dname, dunit, "target", &val) == 0) {
   if (val != target)
    continue;
   wired++;
  }
  if (resource_int_value(dname, dunit, "lun", &val) == 0) {
   if (val != lun)
    continue;
   wired++;
  }
  if (wired != 0) {
   unit = dunit;
   break;
  }
 }







 unit = camperiphnextunit(p_drv, unit, wired, pathid, target, lun);

 return (unit);
}
