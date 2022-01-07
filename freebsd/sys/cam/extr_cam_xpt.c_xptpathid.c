
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path_id_t ;
typedef int buf ;


 int CAM_XPT_PATH_ID ;
 int printf (char*,char const*,int,int,int) ;
 scalar_t__ resource_find_match (int*,char const**,int*,char*,char*) ;
 scalar_t__ resource_int_value (char*,int,char*,int*) ;
 int snprintf (char*,int,char*,char const*,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int xptnextfreepathid () ;

__attribute__((used)) static path_id_t
xptpathid(const char *sim_name, int sim_unit, int sim_bus)
{
 path_id_t pathid;
 int i, dunit, val;
 char buf[32];
 const char *dname;

 pathid = CAM_XPT_PATH_ID;
 snprintf(buf, sizeof(buf), "%s%d", sim_name, sim_unit);
 if (strcmp(buf, "xpt0") == 0 && sim_bus == 0)
  return (pathid);
 i = 0;
 while ((resource_find_match(&i, &dname, &dunit, "at", buf)) == 0) {
  if (strcmp(dname, "scbus")) {

   continue;
  }
  if (dunit < 0)
   continue;
  if (resource_int_value("scbus", dunit, "bus", &val) == 0) {
   if (sim_bus == val) {
    pathid = dunit;
    break;
   }
  } else if (sim_bus == 0) {

   pathid = dunit;
   break;
  } else {
   printf("Ambiguous scbus configuration for %s%d "
          "bus %d, cannot wire down.  The kernel "
          "config entry for scbus%d should "
          "specify a controller bus.\n"
          "Scbus will be assigned dynamically.\n",
          sim_name, sim_unit, sim_bus, dunit);
   break;
  }
 }

 if (pathid == CAM_XPT_PATH_ID)
  pathid = xptnextfreepathid();
 return (pathid);
}
