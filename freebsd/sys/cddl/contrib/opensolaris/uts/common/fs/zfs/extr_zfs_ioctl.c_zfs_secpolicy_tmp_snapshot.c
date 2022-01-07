
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int ZFS_DELEG_PERM_DIFF ;
 int zfs_secpolicy_destroy (TYPE_1__*,int *,int *) ;
 int zfs_secpolicy_hold (TYPE_1__*,int *,int *) ;
 int zfs_secpolicy_release (TYPE_1__*,int *,int *) ;
 int zfs_secpolicy_snapshot_perms (int ,int *) ;
 int zfs_secpolicy_write_perms (int ,int ,int *) ;

__attribute__((used)) static int
zfs_secpolicy_tmp_snapshot(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{





 int error;

 if ((error = zfs_secpolicy_write_perms(zc->zc_name,
     ZFS_DELEG_PERM_DIFF, cr)) == 0)
  return (0);

 error = zfs_secpolicy_snapshot_perms(zc->zc_name, cr);
 if (error == 0)
  error = zfs_secpolicy_hold(zc, innvl, cr);
 if (error == 0)
  error = zfs_secpolicy_release(zc, innvl, cr);
 if (error == 0)
  error = zfs_secpolicy_destroy(zc, innvl, cr);
 return (error);
}
