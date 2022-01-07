
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int EINVAL ;
 int EXDEV ;
 int SET_ERROR (int ) ;
 int dsl_destroy_snapshots_nvl (int *,int ,int *) ;
 int nvlist_exists (int *,char*) ;
 scalar_t__ nvlist_lookup_nvlist (int *,char*,int **) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 int zfs_unmount_snap (char*) ;
 int zvol_remove_minors (char const*) ;

__attribute__((used)) static int
zfs_ioc_destroy_snaps(const char *poolname, nvlist_t *innvl, nvlist_t *outnvl)
{
 int error, poollen;
 nvlist_t *snaps;
 nvpair_t *pair;
 boolean_t defer;

 if (nvlist_lookup_nvlist(innvl, "snaps", &snaps) != 0)
  return (SET_ERROR(EINVAL));
 defer = nvlist_exists(innvl, "defer");

 poollen = strlen(poolname);
 for (pair = nvlist_next_nvpair(snaps, ((void*)0)); pair != ((void*)0);
     pair = nvlist_next_nvpair(snaps, pair)) {
  const char *name = nvpair_name(pair);





  if (strncmp(name, poolname, poollen) != 0 ||
      (name[poollen] != '/' && name[poollen] != '@'))
   return (SET_ERROR(EXDEV));

  zfs_unmount_snap(nvpair_name(pair));



 }

 return (dsl_destroy_snapshots_nvl(snaps, defer, outnvl));
}
