
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 char* nvlist_next (int const*,int *,void**) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static bool
limit_has_entry(const nvlist_t *limits, const char *prefix)
{
 const char *name;
 size_t prefixlen;
 void *cookie;

 if (limits == ((void*)0))
  return (0);

 prefixlen = strlen(prefix);

 cookie = ((void*)0);
 while ((name = nvlist_next(limits, ((void*)0), &cookie)) != ((void*)0)) {
  if (strncmp(name, prefix, prefixlen) == 0)
   return (1);
 }

 return (0);
}
