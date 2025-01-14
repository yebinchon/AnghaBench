
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


union dinodep {TYPE_2__* dp2; TYPE_1__* dp1; } ;
typedef size_t ufs_lbn_t ;
typedef scalar_t__ ufs2_daddr_t ;
typedef int off_t ;
typedef int ino_t ;
struct TYPE_16__ {int d_error; } ;
struct TYPE_15__ {scalar_t__ fs_magic; int fs_bsize; } ;
struct TYPE_14__ {scalar_t__* di_db; int di_blocks; void* di_size; } ;
struct TYPE_13__ {scalar_t__* di_db; int di_blocks; void* di_size; } ;


 int DEV_BSIZE ;
 scalar_t__ FS_UFS1_MAGIC ;
 int UFS_ROOTINO ;
 int blkoff (TYPE_3__*,void*) ;
 scalar_t__ cgbfree (TYPE_5__*,scalar_t__,int) ;
 scalar_t__ cgwrite (TYPE_5__*) ;
 int dir_extend (scalar_t__,scalar_t__,int,int ) ;
 int dir_insert (scalar_t__,int ,int ) ;
 TYPE_5__ disk ;
 scalar_t__ getinode (TYPE_5__*,union dinodep*,int ) ;
 scalar_t__ journal_balloc () ;
 size_t lblkno (TYPE_3__*,void*) ;
 void* lblktosize (TYPE_3__*,size_t) ;
 scalar_t__ putinode (TYPE_5__*) ;
 int sbdirty () ;
 int sblksize (TYPE_3__*,int ,size_t) ;
 TYPE_3__ sblock ;
 int warn (char*,...) ;

__attribute__((used)) static int
journal_insertfile(ino_t ino)
{
 union dinodep dp;
 ufs2_daddr_t nblk;
 ufs2_daddr_t blk;
 ufs_lbn_t lbn;
 int size;
 int off;

 if (getinode(&disk, &dp, UFS_ROOTINO) != 0) {
  warn("Failed to get root inode: %s", disk.d_error);
  sbdirty();
  return (-1);
 }
 blk = 0;
 size = 0;
 nblk = journal_balloc();
 if (nblk <= 0)
  return (-1);






 if (sblock.fs_magic == FS_UFS1_MAGIC) {
  lbn = lblkno(&sblock, dp.dp1->di_size);
  off = blkoff(&sblock, dp.dp1->di_size);
  blk = dp.dp1->di_db[lbn];
  size = sblksize(&sblock, (off_t)dp.dp1->di_size, lbn);
 } else {
  lbn = lblkno(&sblock, dp.dp2->di_size);
  off = blkoff(&sblock, dp.dp2->di_size);
  blk = dp.dp2->di_db[lbn];
  size = sblksize(&sblock, (off_t)dp.dp2->di_size, lbn);
 }
 if (off != 0) {
  if (dir_extend(blk, nblk, off, ino) == -1)
   return (-1);
 } else {
  blk = 0;
  if (dir_insert(nblk, 0, ino) == -1)
   return (-1);
 }
 if (sblock.fs_magic == FS_UFS1_MAGIC) {
  dp.dp1->di_blocks += (sblock.fs_bsize - size) / DEV_BSIZE;
  dp.dp1->di_db[lbn] = nblk;
  dp.dp1->di_size = lblktosize(&sblock, lbn+1);
 } else {
  dp.dp2->di_blocks += (sblock.fs_bsize - size) / DEV_BSIZE;
  dp.dp2->di_db[lbn] = nblk;
  dp.dp2->di_size = lblktosize(&sblock, lbn+1);
 }
 if (putinode(&disk) < 0) {
  warn("Failed to write root inode: %s", disk.d_error);
  return (-1);
 }
 if (cgwrite(&disk) < 0) {
  warn("Failed to write updated cg");
  sbdirty();
  return (-1);
 }
 if (blk) {
  if (cgbfree(&disk, blk, size) < 0) {
   warn("Failed to write cg");
   return (-1);
  }
 }

 return (0);
}
