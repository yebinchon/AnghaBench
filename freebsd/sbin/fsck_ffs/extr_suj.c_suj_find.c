
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufs_lbn_t ;
typedef int ufs2_daddr_t ;
struct direct {scalar_t__ d_reclen; scalar_t__ d_ino; scalar_t__ d_namlen; int d_name; } ;
typedef int ino_t ;


 int MAXBSIZE ;
 int SUJ_FILE ;
 scalar_t__ bcmp (int ,int ,scalar_t__) ;
 scalar_t__ bread (int *,int ,char*,int) ;
 int disk ;
 int err_suj (char*,int ) ;
 int fs ;
 int fsbtodb (int ,int ) ;
 int lfragtosize (int ,int) ;
 scalar_t__ strlen (int ) ;
 scalar_t__ sujino ;

__attribute__((used)) static void
suj_find(ino_t ino, ufs_lbn_t lbn, ufs2_daddr_t blk, int frags)
{
 char block[MAXBSIZE];
 struct direct *dp;
 int bytes;
 int off;

 if (sujino)
  return;
 bytes = lfragtosize(fs, frags);
 if (bread(&disk, fsbtodb(fs, blk), block, bytes) <= 0)
  err_suj("Failed to read UFS_ROOTINO directory block %jd\n",
      blk);
 for (off = 0; off < bytes; off += dp->d_reclen) {
  dp = (struct direct *)&block[off];
  if (dp->d_reclen == 0)
   break;
  if (dp->d_ino == 0)
   continue;
  if (dp->d_namlen != strlen(SUJ_FILE))
   continue;
  if (bcmp(dp->d_name, SUJ_FILE, dp->d_namlen) != 0)
   continue;
  sujino = dp->d_ino;
  return;
 }
}
