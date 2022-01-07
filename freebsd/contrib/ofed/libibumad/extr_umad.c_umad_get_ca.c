
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umad_ca_t ;


 int DEBUG (char*,char const*) ;
 int ENODEV ;
 int TRACE (char*,char const*) ;
 scalar_t__ find_cached_ca (char const*,int *) ;
 int get_ca (char const*,int *) ;
 char* resolve_ca_name (char const*,int *) ;

int umad_get_ca(const char *ca_name, umad_ca_t * ca)
{
 int r;

 TRACE("ca_name %s", ca_name);
 if (!(ca_name = resolve_ca_name(ca_name, ((void*)0))))
  return -ENODEV;

 if (find_cached_ca(ca_name, ca) > 0)
  return 0;

 if ((r = get_ca(ca_name, ca)) < 0)
  return r;

 DEBUG("opened %s", ca_name);
 return 0;
}
