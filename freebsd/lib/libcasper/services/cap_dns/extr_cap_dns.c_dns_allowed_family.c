
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;


 int AF_UNSPEC ;
 scalar_t__ nvlist_get_number (int const*,char const*) ;
 char* nvlist_next (int const*,int *,void**) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static bool
dns_allowed_family(const nvlist_t *limits, int family)
{
 const char *name;
 bool nofamilies;
 void *cookie;

 if (limits == ((void*)0))
  return (1);

 nofamilies = 1;
 cookie = ((void*)0);
 while ((name = nvlist_next(limits, ((void*)0), &cookie)) != ((void*)0)) {
  if (strncmp(name, "family", sizeof("family") - 1) != 0)
   continue;
  nofamilies = 0;
  if (family == AF_UNSPEC)
   continue;
  if (nvlist_get_number(limits, name) == (uint64_t)family)
   return (1);
 }


 if (nofamilies)
  return (1);

 return (0);
}
