
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_cmd_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int EINVAL ;
 int SET_ERROR (int ) ;
 scalar_t__ nvlist_lookup_nvlist (int *,char*,int **) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 char* strchr (char*,char) ;
 int zfs_secpolicy_snapshot_perms (char*,int *) ;

__attribute__((used)) static int
zfs_secpolicy_snapshot(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 nvlist_t *snaps;
 int error;
 nvpair_t *pair;

 if (nvlist_lookup_nvlist(innvl, "snaps", &snaps) != 0)
  return (SET_ERROR(EINVAL));
 for (pair = nvlist_next_nvpair(snaps, ((void*)0)); pair != ((void*)0);
     pair = nvlist_next_nvpair(snaps, pair)) {
  char *name = nvpair_name(pair);
  char *atp = strchr(name, '@');

  if (atp == ((void*)0)) {
   error = SET_ERROR(EINVAL);
   break;
  }
  *atp = '\0';
  error = zfs_secpolicy_snapshot_perms(name, cr);
  *atp = '@';
  if (error != 0)
   break;
 }
 return (error);
}
