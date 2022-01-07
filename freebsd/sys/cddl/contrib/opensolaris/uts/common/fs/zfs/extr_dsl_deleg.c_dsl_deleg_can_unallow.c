
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zfs_deleg_who_type_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int longlong_t ;
typedef int idstr ;
typedef int cred_t ;


 int EPERM ;
 int SET_ERROR (int ) ;
 int ZFS_DELEG_PERM_ALLOW ;
 scalar_t__ ZFS_DELEG_USER ;
 scalar_t__ ZFS_DELEG_USER_SETS ;
 scalar_t__ crgetuid (int *) ;
 int dsl_deleg_access (char*,int ,int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 scalar_t__* nvpair_name (int *) ;
 int snprintf (char*,int,char*,int ) ;
 scalar_t__ strcmp (char*,scalar_t__*) ;

int
dsl_deleg_can_unallow(char *ddname, nvlist_t *nvp, cred_t *cr)
{
 nvpair_t *whopair = ((void*)0);
 int error;
 char idstr[32];

 if ((error = dsl_deleg_access(ddname, ZFS_DELEG_PERM_ALLOW, cr)) != 0)
  return (error);

 (void) snprintf(idstr, sizeof (idstr), "%lld",
     (longlong_t)crgetuid(cr));

 while (whopair = nvlist_next_nvpair(nvp, whopair)) {
  zfs_deleg_who_type_t type = nvpair_name(whopair)[0];

  if (type != ZFS_DELEG_USER &&
      type != ZFS_DELEG_USER_SETS)
   return (SET_ERROR(EPERM));

  if (strcmp(idstr, &nvpair_name(whopair)[3]) != 0)
   return (SET_ERROR(EPERM));
 }
 return (0);
}
