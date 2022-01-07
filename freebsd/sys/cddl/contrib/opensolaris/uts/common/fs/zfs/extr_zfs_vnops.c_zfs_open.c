
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int z_pflags; scalar_t__ z_size; int z_sync_cnt; TYPE_2__* z_zfsvfs; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_11__ {scalar_t__ z_vscan; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int vnode_t ;
typedef int cred_t ;
typedef int caller_context_t ;
struct TYPE_12__ {scalar_t__ v_type; } ;


 int EACCES ;
 int EPERM ;
 int FAPPEND ;
 int FDSYNC ;
 int FSYNC ;
 int FWRITE ;
 int SET_ERROR (int ) ;
 scalar_t__ VREG ;
 TYPE_1__* VTOZ (int *) ;
 int ZFS_APPENDONLY ;
 int ZFS_AV_QUARANTINED ;
 int ZFS_ENTER (TYPE_2__*) ;
 int ZFS_EXIT (TYPE_2__*) ;
 int ZFS_VERIFY_ZP (TYPE_1__*) ;
 TYPE_4__* ZTOV (TYPE_1__*) ;
 int atomic_inc_32 (int *) ;
 scalar_t__ fs_vscan (int *,int *,int ) ;
 int zfs_has_ctldir (TYPE_1__*) ;

__attribute__((used)) static int
zfs_open(vnode_t **vpp, int flag, cred_t *cr, caller_context_t *ct)
{
 znode_t *zp = VTOZ(*vpp);
 zfsvfs_t *zfsvfs = zp->z_zfsvfs;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);

 if ((flag & FWRITE) && (zp->z_pflags & ZFS_APPENDONLY) &&
     ((flag & FAPPEND) == 0)) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EPERM));
 }

 if (!zfs_has_ctldir(zp) && zp->z_zfsvfs->z_vscan &&
     ZTOV(zp)->v_type == VREG &&
     !(zp->z_pflags & ZFS_AV_QUARANTINED) && zp->z_size > 0) {
  if (fs_vscan(*vpp, cr, 0) != 0) {
   ZFS_EXIT(zfsvfs);
   return (SET_ERROR(EACCES));
  }
 }


 if (flag & (FSYNC | FDSYNC))
  atomic_inc_32(&zp->z_sync_cnt);

 ZFS_EXIT(zfsvfs);
 return (0);
}
