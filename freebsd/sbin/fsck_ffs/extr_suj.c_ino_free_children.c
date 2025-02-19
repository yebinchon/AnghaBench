
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint8_t ;
typedef int ufs_lbn_t ;
typedef int ufs2_daddr_t ;
struct suj_ino {int si_skipparent; } ;
struct direct {scalar_t__ d_ino; int d_namlen; char* d_name; scalar_t__ d_reclen; } ;
typedef scalar_t__ off_t ;
typedef scalar_t__ ino_t ;


 scalar_t__ UFS_WINO ;
 int * dblk_read (int ,int) ;
 scalar_t__ debug ;
 int fs ;
 struct suj_ino* ino_lookup (scalar_t__,int ) ;
 int ino_remref (scalar_t__,scalar_t__,scalar_t__,int) ;
 scalar_t__ lblktosize (int ,int ) ;
 int lfragtosize (int ,int) ;
 int printf (char*,int ,int ,char*) ;

__attribute__((used)) static void
ino_free_children(ino_t ino, ufs_lbn_t lbn, ufs2_daddr_t blk, int frags)
{
 struct suj_ino *sino;
 struct direct *dp;
 off_t diroff;
 uint8_t *block;
 int skipparent;
 int isdotdot;
 int dpoff;
 int size;

 sino = ino_lookup(ino, 0);
 if (sino)
  skipparent = sino->si_skipparent;
 else
  skipparent = 0;
 size = lfragtosize(fs, frags);
 block = dblk_read(blk, size);
 dp = (struct direct *)&block[0];
 for (dpoff = 0; dpoff < size && dp->d_reclen; dpoff += dp->d_reclen) {
  dp = (struct direct *)&block[dpoff];
  if (dp->d_ino == 0 || dp->d_ino == UFS_WINO)
   continue;
  if (dp->d_namlen == 1 && dp->d_name[0] == '.')
   continue;
  isdotdot = dp->d_namlen == 2 && dp->d_name[0] == '.' &&
      dp->d_name[1] == '.';
  if (isdotdot && skipparent == 1)
   continue;
  if (debug)
   printf("Directory %ju removing ino %ju name %s\n",
       (uintmax_t)ino, (uintmax_t)dp->d_ino, dp->d_name);
  diroff = lblktosize(fs, lbn) + dpoff;
  ino_remref(ino, dp->d_ino, diroff, isdotdot);
 }
}
