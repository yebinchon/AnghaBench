
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int nvlist_get_string (int const*,char const*) ;
 char* nvlist_next (int const*,int *,void**) ;
 scalar_t__ strcmp (int ,char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static bool
dns_allowed_type(const nvlist_t *limits, const char *type)
{
 const char *name;
 bool notypes;
 void *cookie;

 if (limits == ((void*)0))
  return (1);

 notypes = 1;
 cookie = ((void*)0);
 while ((name = nvlist_next(limits, ((void*)0), &cookie)) != ((void*)0)) {
  if (strncmp(name, "type", sizeof("type") - 1) != 0)
   continue;
  notypes = 0;
  if (strcmp(nvlist_get_string(limits, name), type) == 0)
   return (1);
 }


 if (notypes)
  return (1);

 return (0);
}
