
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int z_pflags; scalar_t__ z_size; TYPE_2__* z_zfsvfs; int z_sync_cnt; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_11__ {scalar_t__ z_vscan; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int vnode_t ;
typedef int offset_t ;
typedef int cred_t ;
typedef int caller_context_t ;
struct TYPE_12__ {scalar_t__ v_type; } ;


 int FDSYNC ;
 int FSYNC ;
 int VERIFY (int) ;
 scalar_t__ VREG ;
 TYPE_1__* VTOZ (int *) ;
 int ZFS_AV_QUARANTINED ;
 int ZFS_ENTER (TYPE_2__*) ;
 int ZFS_EXIT (TYPE_2__*) ;
 int ZFS_VERIFY_ZP (TYPE_1__*) ;
 TYPE_4__* ZTOV (TYPE_1__*) ;
 int atomic_dec_32 (int *) ;
 int cleanlocks (int *,int ,int ) ;
 int cleanshares (int *,int ) ;
 int ddi_get_pid () ;
 scalar_t__ fs_vscan (int *,int *,int) ;
 int zfs_has_ctldir (TYPE_1__*) ;

__attribute__((used)) static int
zfs_close(vnode_t *vp, int flag, int count, offset_t offset, cred_t *cr,
    caller_context_t *ct)
{
 znode_t *zp = VTOZ(vp);
 zfsvfs_t *zfsvfs = zp->z_zfsvfs;




 cleanlocks(vp, ddi_get_pid(), 0);
 cleanshares(vp, ddi_get_pid());

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);


 if ((flag & (FSYNC | FDSYNC)) && (count == 1))
  atomic_dec_32(&zp->z_sync_cnt);

 if (!zfs_has_ctldir(zp) && zp->z_zfsvfs->z_vscan &&
     ZTOV(zp)->v_type == VREG &&
     !(zp->z_pflags & ZFS_AV_QUARANTINED) && zp->z_size > 0)
  VERIFY(fs_vscan(vp, cr, 1) == 0);

 ZFS_EXIT(zfsvfs);
 return (0);
}
