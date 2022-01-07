
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int ZFS_DELEG_PERM_CREATE ;
 int ZFS_DELEG_PERM_MOUNT ;
 int ZFS_DELEG_PERM_RECEIVE ;
 int zfs_secpolicy_write_perms (int ,int ,int *) ;

__attribute__((used)) static int
zfs_secpolicy_recv(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 int error;

 if ((error = zfs_secpolicy_write_perms(zc->zc_name,
     ZFS_DELEG_PERM_RECEIVE, cr)) != 0)
  return (error);

 if ((error = zfs_secpolicy_write_perms(zc->zc_name,
     ZFS_DELEG_PERM_MOUNT, cr)) != 0)
  return (error);

 return (zfs_secpolicy_write_perms(zc->zc_name,
     ZFS_DELEG_PERM_CREATE, cr));
}
