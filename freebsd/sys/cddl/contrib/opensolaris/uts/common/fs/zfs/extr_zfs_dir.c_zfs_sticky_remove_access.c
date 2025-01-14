
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int z_mode; int z_uid; TYPE_2__* z_zfsvfs; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_11__ {scalar_t__ z_replay; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef scalar_t__ uid_t ;
typedef int cred_t ;
struct TYPE_12__ {scalar_t__ v_type; } ;


 int ACE_WRITE_DATA ;
 int B_FALSE ;
 int S_ISVTX ;
 scalar_t__ VREG ;
 int ZFS_OWNER ;
 TYPE_7__* ZTOV (TYPE_1__*) ;
 scalar_t__ crgetuid (int *) ;
 int secpolicy_vnode_remove (TYPE_7__*,int *) ;
 scalar_t__ zfs_fuid_map_id (TYPE_2__*,int ,int *,int ) ;
 scalar_t__ zfs_zaccess (TYPE_1__*,int ,int ,int ,int *) ;

int
zfs_sticky_remove_access(znode_t *zdp, znode_t *zp, cred_t *cr)
{
 uid_t uid;
 uid_t downer;
 uid_t fowner;
 zfsvfs_t *zfsvfs = zdp->z_zfsvfs;

 if (zdp->z_zfsvfs->z_replay)
  return (0);

 if ((zdp->z_mode & S_ISVTX) == 0)
  return (0);

 downer = zfs_fuid_map_id(zfsvfs, zdp->z_uid, cr, ZFS_OWNER);
 fowner = zfs_fuid_map_id(zfsvfs, zp->z_uid, cr, ZFS_OWNER);

 if ((uid = crgetuid(cr)) == downer || uid == fowner ||
     (ZTOV(zp)->v_type == VREG &&
     zfs_zaccess(zp, ACE_WRITE_DATA, 0, B_FALSE, cr) == 0))
  return (0);
 else
  return (secpolicy_vnode_remove(ZTOV(zp), cr));
}
