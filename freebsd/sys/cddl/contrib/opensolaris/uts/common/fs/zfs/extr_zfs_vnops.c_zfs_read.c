
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {int z_pflags; scalar_t__ z_size; int z_blksz; int z_sa_hdl; int z_rangelock; int z_id; int z_mode; TYPE_3__* z_zfsvfs; } ;
typedef TYPE_2__ znode_t ;
struct TYPE_20__ {scalar_t__ z_log; TYPE_1__* z_os; } ;
typedef TYPE_3__ zfsvfs_t ;
struct TYPE_21__ {scalar_t__ xu_type; } ;
typedef TYPE_4__ xuio_t ;
typedef int vnode_t ;
struct TYPE_22__ {scalar_t__ uio_loffset; int uio_resid; scalar_t__ uio_extflg; scalar_t__ uio_segflg; int uio_fmode; } ;
typedef TYPE_5__ uio_t ;
typedef int uint64_t ;
typedef int ssize_t ;
typedef scalar_t__ offset_t ;
typedef int locked_range_t ;
typedef int cred_t ;
typedef int caller_context_t ;
struct TYPE_18__ {scalar_t__ os_sync; } ;


 int ASSERT (int) ;
 int EACCES ;
 int ECKSUM ;
 int EINVAL ;
 int EIO ;
 int FREAD ;
 int FRSYNC ;
 scalar_t__ ISP2 (int) ;
 scalar_t__ MANDMODE (int ) ;
 int MIN (int,scalar_t__) ;
 int P2ALIGN (int,int) ;
 scalar_t__ P2PHASE (int,scalar_t__) ;
 int P2ROUNDUP (int,int) ;
 int RL_READER ;
 int SET_ERROR (int ) ;
 scalar_t__ UIOTYPE_ZEROCOPY ;
 scalar_t__ UIO_NOCOPY ;
 scalar_t__ UIO_XUIO ;
 TYPE_2__* VTOZ (int *) ;
 int ZFS_ACCESSTIME_STAMP (TYPE_3__*,TYPE_2__*) ;
 int ZFS_AV_QUARANTINED ;
 int ZFS_ENTER (TYPE_3__*) ;
 int ZFS_EXIT (TYPE_3__*) ;
 scalar_t__ ZFS_SYNC_ALWAYS ;
 int ZFS_VERIFY_ZP (TYPE_2__*) ;
 int chklock (int *,int ,scalar_t__,int,int ,int *) ;
 int dmu_read_uio_dbuf (int ,TYPE_5__*,int) ;
 int dmu_request_arcbuf (int ,int) ;
 int dmu_xuio_add (TYPE_4__*,int ,int ,int) ;
 int dmu_xuio_init (TYPE_4__*,int) ;
 int mappedread (int *,int,TYPE_5__*) ;
 int mappedread_sf (int *,int,TYPE_5__*) ;
 int * rangelock_enter (int *,scalar_t__,int,int ) ;
 int rangelock_exit (int *) ;
 int sa_get_db (int ) ;
 scalar_t__ vn_has_cached_data (int *) ;
 scalar_t__ zfs_read_chunk_size ;
 int zil_commit (scalar_t__,int ) ;

__attribute__((used)) static int
zfs_read(vnode_t *vp, uio_t *uio, int ioflag, cred_t *cr, caller_context_t *ct)
{
 znode_t *zp = VTOZ(vp);
 zfsvfs_t *zfsvfs = zp->z_zfsvfs;
 ssize_t n, nbytes;
 int error = 0;
 xuio_t *xuio = ((void*)0);

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);

 if (zp->z_pflags & ZFS_AV_QUARANTINED) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EACCES));
 }




 if (uio->uio_loffset < (offset_t)0) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EINVAL));
 }




 if (uio->uio_resid == 0) {
  ZFS_EXIT(zfsvfs);
  return (0);
 }




 if (MANDMODE(zp->z_mode)) {
  if (error = chklock(vp, FREAD,
      uio->uio_loffset, uio->uio_resid, uio->uio_fmode, ct)) {
   ZFS_EXIT(zfsvfs);
   return (error);
  }
 }




 if (zfsvfs->z_log &&
     (ioflag & FRSYNC || zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS))
  zil_commit(zfsvfs->z_log, zp->z_id);




 locked_range_t *lr = rangelock_enter(&zp->z_rangelock,
     uio->uio_loffset, uio->uio_resid, RL_READER);





 if (uio->uio_loffset >= zp->z_size) {
  error = 0;
  goto out;
 }

 ASSERT(uio->uio_loffset < zp->z_size);
 n = MIN(uio->uio_resid, zp->z_size - uio->uio_loffset);
 while (n > 0) {
  nbytes = MIN(n, zfs_read_chunk_size -
      P2PHASE(uio->uio_loffset, zfs_read_chunk_size));






  if (vn_has_cached_data(vp)) {
   error = mappedread(vp, nbytes, uio);
  } else {
   error = dmu_read_uio_dbuf(sa_get_db(zp->z_sa_hdl),
       uio, nbytes);
  }
  if (error) {

   if (error == ECKSUM)
    error = SET_ERROR(EIO);
   break;
  }

  n -= nbytes;
 }
out:
 rangelock_exit(lr);

 ZFS_ACCESSTIME_STAMP(zfsvfs, zp);
 ZFS_EXIT(zfsvfs);
 return (error);
}
