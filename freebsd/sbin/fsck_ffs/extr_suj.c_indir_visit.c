
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int uint64_t ;
typedef int ufs_lbn_t ;
typedef scalar_t__ ufs2_daddr_t ;
typedef int ufs1_daddr_t ;
typedef int (* ino_visitor ) (scalar_t__,int,scalar_t__,scalar_t__) ;
typedef scalar_t__ ino_t ;
struct TYPE_3__ {scalar_t__ fs_magic; scalar_t__ fs_frag; int fs_bsize; } ;


 scalar_t__ FS_UFS1_MAGIC ;
 int NINDIR (TYPE_1__*) ;
 int VISIT_INDIR ;
 int VISIT_ROOT ;
 scalar_t__ blk_isindir (scalar_t__,scalar_t__,int) ;
 scalar_t__ dblk_read (scalar_t__,int ) ;
 scalar_t__ debug ;
 int err_suj (char*,int) ;
 TYPE_1__* fs ;
 int lbn_level (int) ;
 int printf (char*,scalar_t__,int ,int,int) ;

__attribute__((used)) static void
indir_visit(ino_t ino, ufs_lbn_t lbn, ufs2_daddr_t blk, uint64_t *frags,
    ino_visitor visitor, int flags)
{
 ufs2_daddr_t *bap2;
 ufs1_daddr_t *bap1;
 ufs_lbn_t lbnadd;
 ufs2_daddr_t nblk;
 ufs_lbn_t nlbn;
 int level;
 int i;







 if (blk == 0)
  return;
 level = lbn_level(lbn);
 if (level == -1)
  err_suj("Invalid level for lbn %jd\n", lbn);
 if ((flags & VISIT_ROOT) == 0 && blk_isindir(blk, ino, lbn) == 0) {
  if (debug)
   printf("blk %jd ino %ju lbn %jd(%d) is not indir.\n",
       blk, (uintmax_t)ino, lbn, level);
  goto out;
 }
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
  if (level == 0) {
   nlbn = -lbn + i * lbnadd;
   (*frags) += fs->fs_frag;
   visitor(ino, nlbn, nblk, fs->fs_frag);
  } else {
   nlbn = (lbn + 1) - (i * lbnadd);
   indir_visit(ino, nlbn, nblk, frags, visitor, flags);
  }
 }
out:
 if (flags & VISIT_INDIR) {
  (*frags) += fs->fs_frag;
  visitor(ino, lbn, blk, fs->fs_frag);
 }
}
