
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int ENOENT ;
 int nvlist_lookup_nvlist (int *,int ,int **) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 int zfs_valid_permission_name (int ) ;
 scalar_t__ zfs_validate_who (int ) ;

int
zfs_deleg_verify_nvlist(nvlist_t *nvp)
{
 nvpair_t *who, *perm_name;
 nvlist_t *perms;
 int error;

 if (nvp == ((void*)0))
  return (-1);

 who = nvlist_next_nvpair(nvp, ((void*)0));
 if (who == ((void*)0))
  return (-1);

 do {
  if (zfs_validate_who(nvpair_name(who)))
   return (-1);

  error = nvlist_lookup_nvlist(nvp, nvpair_name(who), &perms);

  if (error && error != ENOENT)
   return (-1);
  if (error == ENOENT)
   continue;

  perm_name = nvlist_next_nvpair(perms, ((void*)0));
  if (perm_name == ((void*)0)) {
   return (-1);
  }
  do {
   error = zfs_valid_permission_name(
       nvpair_name(perm_name));
   if (error)
    return (-1);
  } while ((perm_name = nvlist_next_nvpair(perms, perm_name))
      != ((void*)0));
 } while ((who = nvlist_next_nvpair(nvp, who)) != ((void*)0));
 return (0);
}
