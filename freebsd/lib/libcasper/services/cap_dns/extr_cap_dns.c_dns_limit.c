
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int ENOTCAPABLE ;
 int NV_TYPE_NUMBER ;
 int NV_TYPE_STRING ;
 int dns_allowed_family (int const*,int) ;
 int dns_allowed_type (int const*,char const*) ;
 scalar_t__ limit_has_entry (int const*,char*) ;
 scalar_t__ nvlist_get_number (int const*,char const*) ;
 char* nvlist_get_string (int const*,char const*) ;
 char* nvlist_next (int const*,int*,void**) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int
dns_limit(const nvlist_t *oldlimits, const nvlist_t *newlimits)
{
 const char *name;
 void *cookie;
 int nvtype;
 bool hastype, hasfamily;

 hastype = 0;
 hasfamily = 0;

 cookie = ((void*)0);
 while ((name = nvlist_next(newlimits, &nvtype, &cookie)) != ((void*)0)) {
  if (nvtype == NV_TYPE_STRING) {
   const char *type;

   if (strncmp(name, "type", sizeof("type") - 1) != 0)
    return (EINVAL);
   type = nvlist_get_string(newlimits, name);
   if (strcmp(type, "ADDR2NAME") != 0 &&
       strcmp(type, "NAME2ADDR") != 0 &&
       strcmp(type, "ADDR") != 0 &&
       strcmp(type, "NAME") != 0) {
    return (EINVAL);
   }
   if (!dns_allowed_type(oldlimits, type))
    return (ENOTCAPABLE);
   hastype = 1;
  } else if (nvtype == NV_TYPE_NUMBER) {
   int family;

   if (strncmp(name, "family", sizeof("family") - 1) != 0)
    return (EINVAL);
   family = (int)nvlist_get_number(newlimits, name);
   if (!dns_allowed_family(oldlimits, family))
    return (ENOTCAPABLE);
   hasfamily = 1;
  } else {
   return (EINVAL);
  }
 }







 if (!hastype) {
  if (limit_has_entry(oldlimits, "type"))
   return (ENOTCAPABLE);
 }
 if (!hasfamily) {
  if (limit_has_entry(oldlimits, "family"))
   return (ENOTCAPABLE);
 }

 return (0);
}
