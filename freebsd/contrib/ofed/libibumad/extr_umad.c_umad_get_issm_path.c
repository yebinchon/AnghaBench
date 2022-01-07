
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENODEV ;
 int TRACE (char*,char const*,int) ;
 char* UMAD_DEV_DIR ;
 int dev_to_umad_id (char const*,int) ;
 char* resolve_ca_name (char const*,int*) ;
 int snprintf (char*,int,char*,char*,int) ;

int umad_get_issm_path(const char *ca_name, int portnum, char path[], int max)
{
 int umad_id;

 TRACE("ca %s port %d", ca_name, portnum);

 if (!(ca_name = resolve_ca_name(ca_name, &portnum)))
  return -ENODEV;

 if ((umad_id = dev_to_umad_id(ca_name, portnum)) < 0)
  return -EINVAL;

 snprintf(path, max, "%s/issm%u", UMAD_DEV_DIR, umad_id);

 return 0;
}
