
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int EINVAL ;
 int SET_ERROR (int ) ;
 int dsl_bookmark_create (int *,int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 scalar_t__ nvpair_value_string (int *,char**) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
zfs_ioc_bookmark(const char *poolname, nvlist_t *innvl, nvlist_t *outnvl)
{
 for (nvpair_t *pair = nvlist_next_nvpair(innvl, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(innvl, pair)) {
  char *snap_name;




  if (nvpair_value_string(pair, &snap_name) != 0)
   return (SET_ERROR(EINVAL));



  for (nvpair_t *pair2 = nvlist_next_nvpair(innvl, pair);
      pair2 != ((void*)0); pair2 = nvlist_next_nvpair(innvl, pair2)) {
   if (strcmp(nvpair_name(pair), nvpair_name(pair2)) == 0)
    return (SET_ERROR(EINVAL));
  }
 }

 return (dsl_bookmark_create(innvl, outnvl));
}
