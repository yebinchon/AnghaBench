
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ z_gid; scalar_t__ z_uid; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_7__ {scalar_t__ z_groupquota_obj; scalar_t__ z_userquota_obj; scalar_t__ z_replay; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ zfs_fuid_overquota (TYPE_2__*,scalar_t__,scalar_t__) ;

boolean_t
zfs_owner_overquota(zfsvfs_t *zfsvfs, znode_t *zp, boolean_t isgroup)
{
 uint64_t fuid;
 uint64_t quotaobj;

 quotaobj = isgroup ? zfsvfs->z_groupquota_obj : zfsvfs->z_userquota_obj;

 fuid = isgroup ? zp->z_gid : zp->z_uid;

 if (quotaobj == 0 || zfsvfs->z_replay)
  return (B_FALSE);

 return (zfs_fuid_overquota(zfsvfs, isgroup, fuid));
}
