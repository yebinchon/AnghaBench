
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ufs_lbn_t ;
typedef scalar_t__ ufs2_daddr_t ;
typedef scalar_t__ ufs1_daddr_t ;
typedef int ino_t ;
struct TYPE_3__ {scalar_t__ fs_magic; int fs_frag; int fs_bsize; } ;


 scalar_t__ FS_UFS1_MAGIC ;
 int NINDIR (TYPE_1__*) ;
 int blk_free (scalar_t__,int ,int ) ;
 int dblk_dirty (scalar_t__) ;
 scalar_t__ dblk_read (scalar_t__,int ) ;
 int err_suj (char*,int) ;
 TYPE_1__* fs ;
 int lbn_level (int) ;

__attribute__((used)) static void
indir_trunc(ino_t ino, ufs_lbn_t lbn, ufs2_daddr_t blk, ufs_lbn_t lastlbn)
{
 ufs2_daddr_t *bap2;
 ufs1_daddr_t *bap1;
 ufs_lbn_t lbnadd;
 ufs2_daddr_t nblk;
 ufs_lbn_t next;
 ufs_lbn_t nlbn;
 int dirty;
 int level;
 int i;

 if (blk == 0)
  return;
 dirty = 0;
 level = lbn_level(lbn);
 if (level == -1)
  err_suj("Invalid level for lbn %jd\n", lbn);
 lbnadd = 1;
 for (i = level; i > 0; i--)
  lbnadd *= NINDIR(fs);
 bap1 = (void *)dblk_read(blk, fs->fs_bsize);
 bap2 = (void *)bap1;
 for (i = 0; i < NINDIR(fs); i++) {
  if (fs->fs_magic == FS_UFS1_MAGIC)
   nblk = *bap1++;
  else
   nblk = *bap2++;
  if (nblk == 0)
   continue;
  if (level != 0) {
   nlbn = (lbn + 1) - (i * lbnadd);





   next = -(lbn + level) + ((i+1) * lbnadd);
   if (next <= lastlbn)
    continue;
   indir_trunc(ino, nlbn, nblk, lastlbn);

   nlbn = next - lbnadd;
   if (nlbn < lastlbn)
    continue;
  } else {
   nlbn = -lbn + i * lbnadd;
   if (nlbn < lastlbn)
    continue;
  }
  dirty = 1;
  blk_free(nblk, 0, fs->fs_frag);
  if (fs->fs_magic == FS_UFS1_MAGIC)
   *(bap1 - 1) = 0;
  else
   *(bap2 - 1) = 0;
 }
 if (dirty)
  dblk_dirty(blk);
}
