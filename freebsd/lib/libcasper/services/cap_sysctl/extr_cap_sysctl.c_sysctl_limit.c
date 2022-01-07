
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int ENOTCAPABLE ;
 int NV_TYPE_NVLIST ;
 int * cnvlist_get_nvlist (void*) ;
 char* nvlist_next (int const*,int*,void**) ;
 scalar_t__ strcmp (char const*,char*) ;
 int sysctl_allowed (int const*,int const*) ;
 int sysctl_valid (int const*,int) ;

__attribute__((used)) static int
sysctl_limit(const nvlist_t *oldlimits, const nvlist_t *newlimits)
{
 const nvlist_t *nvl;
 const char *name;
 void *cookie;
 int error, type;

 cookie = ((void*)0);
 while ((name = nvlist_next(newlimits, &type, &cookie)) != ((void*)0)) {
  if (strcmp(name, "limit") != 0 || type != NV_TYPE_NVLIST)
   return (EINVAL);
  nvl = cnvlist_get_nvlist(cookie);
  error = sysctl_valid(nvl, 1);
  if (error != 0)
   return (error);
  if (!sysctl_allowed(oldlimits, nvl))
   return (ENOTCAPABLE);
 }

 return (0);
}
