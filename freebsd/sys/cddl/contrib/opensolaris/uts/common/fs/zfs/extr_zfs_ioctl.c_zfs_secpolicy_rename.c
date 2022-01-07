
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_cookie; int zc_value; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int EINVAL ;
 int ZFS_DELEG_PERM_BOOKMARK ;
 int ZFS_DELEG_PERM_RENAME ;
 char* strchr (int ,char) ;
 int zfs_secpolicy_rename_perms (int ,int ,int *) ;
 int zfs_secpolicy_write_perms (int ,int ,int *) ;

__attribute__((used)) static int
zfs_secpolicy_rename(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 char *at = ((void*)0);
 char *pound;
 int error;

 if ((pound = strchr(zc->zc_name, '#')) != ((void*)0)) {
  *pound = '\0';
  error = zfs_secpolicy_write_perms(zc->zc_name,
      ZFS_DELEG_PERM_RENAME, cr);
  if (error == 0) {
   error = zfs_secpolicy_write_perms(zc->zc_name,
       ZFS_DELEG_PERM_BOOKMARK, cr);
  }
  *pound = '#';
  return (error);
 }

 if ((zc->zc_cookie & 1) != 0) {




  at = strchr(zc->zc_name, '@');
  if (at == ((void*)0))
   return (EINVAL);
  *at = '\0';
 }

 error = zfs_secpolicy_rename_perms(zc->zc_name, zc->zc_value, cr);

 if (at != ((void*)0))
  *at = '@';

 return (error);
}
