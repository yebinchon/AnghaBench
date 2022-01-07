
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int ENOTCAPABLE ;
 int NV_TYPE_NVLIST ;
 int grp_allowed_cmds (int const*,int const*) ;
 int grp_allowed_fields (int const*,int const*) ;
 int grp_allowed_groups (int const*,int const*) ;
 scalar_t__ nvlist_exists_nvlist (int const*,char*) ;
 int * nvlist_get_nvlist (int const*,char const*) ;
 char* nvlist_next (int const*,int*,void**) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
grp_limit(const nvlist_t *oldlimits, const nvlist_t *newlimits)
{
 const nvlist_t *limits;
 const char *name;
 void *cookie;
 int error, type;

 if (oldlimits != ((void*)0) && nvlist_exists_nvlist(oldlimits, "cmds") &&
     !nvlist_exists_nvlist(newlimits, "cmds")) {
  return (ENOTCAPABLE);
 }
 if (oldlimits != ((void*)0) && nvlist_exists_nvlist(oldlimits, "fields") &&
     !nvlist_exists_nvlist(newlimits, "fields")) {
  return (ENOTCAPABLE);
 }
 if (oldlimits != ((void*)0) && nvlist_exists_nvlist(oldlimits, "groups") &&
     !nvlist_exists_nvlist(newlimits, "groups")) {
  return (ENOTCAPABLE);
 }

 cookie = ((void*)0);
 while ((name = nvlist_next(newlimits, &type, &cookie)) != ((void*)0)) {
  if (type != NV_TYPE_NVLIST)
   return (EINVAL);
  limits = nvlist_get_nvlist(newlimits, name);
  if (strcmp(name, "cmds") == 0)
   error = grp_allowed_cmds(oldlimits, limits);
  else if (strcmp(name, "fields") == 0)
   error = grp_allowed_fields(oldlimits, limits);
  else if (strcmp(name, "groups") == 0)
   error = grp_allowed_groups(oldlimits, limits);
  else
   error = EINVAL;
  if (error != 0)
   return (error);
 }

 return (0);
}
