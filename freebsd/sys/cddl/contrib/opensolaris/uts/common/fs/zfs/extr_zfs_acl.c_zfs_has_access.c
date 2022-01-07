
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z_uid; int z_zfsvfs; } ;
typedef TYPE_1__ znode_t ;
typedef int uint32_t ;
typedef int uid_t ;
typedef int cred_t ;
typedef int boolean_t ;


 int ACE_ALL_PERMS ;
 int B_TRUE ;
 int ZFS_OWNER ;
 int ZTOV (TYPE_1__*) ;
 scalar_t__ secpolicy_vnode_any_access (int *,int ,int ) ;
 int zfs_fuid_map_id (int ,int ,int *,int ) ;
 scalar_t__ zfs_zaccess_aces_check (TYPE_1__*,int *,int,int *) ;

boolean_t
zfs_has_access(znode_t *zp, cred_t *cr)
{
 uint32_t have = ACE_ALL_PERMS;

 if (zfs_zaccess_aces_check(zp, &have, B_TRUE, cr) != 0) {
  uid_t owner;

  owner = zfs_fuid_map_id(zp->z_zfsvfs, zp->z_uid, cr, ZFS_OWNER);
  return (secpolicy_vnode_any_access(cr, ZTOV(zp), owner) == 0);
 }
 return (B_TRUE);
}
