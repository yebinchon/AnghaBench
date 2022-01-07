
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t zc_objset_type; scalar_t__* zc_value; scalar_t__ zc_guid; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int EINVAL ;
 int SET_ERROR (int ) ;
 size_t ZFS_NUM_USERQUOTA_PROPS ;
 size_t ZFS_PROP_USERQUOTA ;
 size_t ZFS_PROP_USERUSED ;
 scalar_t__ crgetuid (int *) ;
 scalar_t__ groupmember (scalar_t__,int *) ;
 int * userquota_perms ;
 int zfs_secpolicy_read (TYPE_1__*,int *,int *) ;
 int zfs_secpolicy_write_perms (int ,int ,int *) ;

__attribute__((used)) static int
zfs_secpolicy_userspace_one(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 int err = zfs_secpolicy_read(zc, innvl, cr);
 if (err)
  return (err);

 if (zc->zc_objset_type >= ZFS_NUM_USERQUOTA_PROPS)
  return (SET_ERROR(EINVAL));

 if (zc->zc_value[0] == 0) {




  if (zc->zc_objset_type == ZFS_PROP_USERUSED ||
      zc->zc_objset_type == ZFS_PROP_USERQUOTA) {
   if (zc->zc_guid == crgetuid(cr))
    return (0);
  } else {
   if (groupmember(zc->zc_guid, cr))
    return (0);
  }
 }

 return (zfs_secpolicy_write_perms(zc->zc_name,
     userquota_perms[zc->zc_objset_type], cr));
}
