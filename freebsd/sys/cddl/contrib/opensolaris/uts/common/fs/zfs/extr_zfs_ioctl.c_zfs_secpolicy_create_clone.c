
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int parentname ;
typedef int nvlist_t ;
typedef int cred_t ;


 int ZFS_DELEG_PERM_CLONE ;
 int ZFS_DELEG_PERM_CREATE ;
 int ZFS_DELEG_PERM_MOUNT ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 scalar_t__ nvlist_lookup_string (int *,char*,char**) ;
 int zfs_get_parent (int ,char*,int) ;
 int zfs_secpolicy_write_perms (char*,int ,int *) ;

__attribute__((used)) static int
zfs_secpolicy_create_clone(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 char parentname[ZFS_MAX_DATASET_NAME_LEN];
 int error;
 char *origin;

 if ((error = zfs_get_parent(zc->zc_name, parentname,
     sizeof (parentname))) != 0)
  return (error);

 if (nvlist_lookup_string(innvl, "origin", &origin) == 0 &&
     (error = zfs_secpolicy_write_perms(origin,
     ZFS_DELEG_PERM_CLONE, cr)) != 0)
  return (error);

 if ((error = zfs_secpolicy_write_perms(parentname,
     ZFS_DELEG_PERM_CREATE, cr)) != 0)
  return (error);

 return (zfs_secpolicy_write_perms(parentname,
     ZFS_DELEG_PERM_MOUNT, cr));
}
