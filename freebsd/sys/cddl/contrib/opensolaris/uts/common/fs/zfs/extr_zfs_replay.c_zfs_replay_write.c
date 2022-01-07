
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ z_size; } ;
typedef TYPE_2__ znode_t ;
struct TYPE_11__ {scalar_t__ z_replay_eof; } ;
typedef TYPE_3__ zfsvfs_t ;
typedef scalar_t__ uint64_t ;
typedef int ssize_t ;
struct TYPE_9__ {int lrc_reclen; } ;
struct TYPE_12__ {scalar_t__ lr_offset; scalar_t__ lr_length; int lr_blkptr; TYPE_1__ lr_common; int lr_foid; } ;
typedef TYPE_4__ lr_write_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ BP_GET_LSIZE (int *) ;
 int ENOENT ;
 int RLIM64_INFINITY ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int VN_RELE (int ) ;
 int ZTOV (TYPE_2__*) ;
 int byteswap_uint64_array (TYPE_4__*,int) ;
 int kcred ;
 int vn_rdwr (int ,int ,char*,scalar_t__,scalar_t__,int ,int ,int ,int ,int *) ;
 int zfs_zget (TYPE_3__*,int ,TYPE_2__**) ;

__attribute__((used)) static int
zfs_replay_write(void *arg1, void *arg2, boolean_t byteswap)
{
 zfsvfs_t *zfsvfs = arg1;
 lr_write_t *lr = arg2;
 char *data = (char *)(lr + 1);
 znode_t *zp;
 int error;
 ssize_t resid;
 uint64_t eod, offset, length;

 if (byteswap)
  byteswap_uint64_array(lr, sizeof (*lr));

 if ((error = zfs_zget(zfsvfs, lr->lr_foid, &zp)) != 0) {





  if (error == ENOENT)
   error = 0;
  return (error);
 }

 offset = lr->lr_offset;
 length = lr->lr_length;
 eod = offset + length;
 zfsvfs->z_replay_eof = 0;


 if (lr->lr_common.lrc_reclen == sizeof (lr_write_t)) {
  uint64_t blocksize = BP_GET_LSIZE(&lr->lr_blkptr);
  if (length < blocksize) {
   offset -= offset % blocksize;
   length = blocksize;
  }
  if (zp->z_size < eod)
   zfsvfs->z_replay_eof = eod;
 }

 error = vn_rdwr(UIO_WRITE, ZTOV(zp), data, length, offset,
     UIO_SYSSPACE, 0, RLIM64_INFINITY, kcred, &resid);

 VN_RELE(ZTOV(zp));
 zfsvfs->z_replay_eof = 0;

 return (error);
}
