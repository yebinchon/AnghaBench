
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ zfs_prop_t ;
struct TYPE_3__ {int zc_name; int zc_value; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int EINVAL ;
 int SET_ERROR (int ) ;
 int ZFS_DELEG_PERM_USERPROP ;
 scalar_t__ ZPROP_INVAL ;
 scalar_t__ zfs_name_to_prop (int ) ;
 int zfs_prop_user (int ) ;
 int zfs_secpolicy_setprop (int ,scalar_t__,int *,int *) ;
 int zfs_secpolicy_write_perms (int ,int ,int *) ;

__attribute__((used)) static int
zfs_secpolicy_inherit_prop(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 zfs_prop_t prop = zfs_name_to_prop(zc->zc_value);

 if (prop == ZPROP_INVAL) {
  if (!zfs_prop_user(zc->zc_value))
   return (SET_ERROR(EINVAL));
  return (zfs_secpolicy_write_perms(zc->zc_name,
      ZFS_DELEG_PERM_USERPROP, cr));
 } else {
  return (zfs_secpolicy_setprop(zc->zc_name, prop,
      ((void*)0), cr));
 }
}
