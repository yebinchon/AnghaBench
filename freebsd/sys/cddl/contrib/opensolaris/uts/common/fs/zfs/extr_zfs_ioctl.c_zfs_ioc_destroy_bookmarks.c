
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int EINVAL ;
 int EXDEV ;
 int SET_ERROR (int ) ;
 int dsl_bookmark_destroy (int *,int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 scalar_t__ zfs_component_namecheck (char const*,int *,int *) ;

__attribute__((used)) static int
zfs_ioc_destroy_bookmarks(const char *poolname, nvlist_t *innvl,
    nvlist_t *outnvl)
{
 int error, poollen;

 poollen = strlen(poolname);
 for (nvpair_t *pair = nvlist_next_nvpair(innvl, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(innvl, pair)) {
  const char *name = nvpair_name(pair);
  const char *cp = strchr(name, '#');





  if (cp == ((void*)0) ||
      zfs_component_namecheck(cp + 1, ((void*)0), ((void*)0)) != 0)
   return (SET_ERROR(EINVAL));




  if (strncmp(name, poolname, poollen) != 0 ||
      (name[poollen] != '/' && name[poollen] != '#'))
   return (SET_ERROR(EXDEV));
 }

 error = dsl_bookmark_destroy(innvl, outnvl);
 return (error);
}
