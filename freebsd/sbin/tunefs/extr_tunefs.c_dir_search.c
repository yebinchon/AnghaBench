
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufs2_daddr_t ;
struct direct {scalar_t__ d_reclen; scalar_t__ d_ino; scalar_t__ d_namlen; int d_name; } ;
typedef int ino_t ;


 int MAXBSIZE ;
 int SUJ_FILE ;
 scalar_t__ bcmp (int ,int ,scalar_t__) ;
 scalar_t__ bread (int *,int ,char*,int) ;
 int disk ;
 int fsbtodb (int *,int ) ;
 int sblock ;
 scalar_t__ strlen (int ) ;
 int warn (char*) ;

__attribute__((used)) static ino_t
dir_search(ufs2_daddr_t blk, int bytes)
{
 char block[MAXBSIZE];
 struct direct *dp;
 int off;

 if (bread(&disk, fsbtodb(&sblock, blk), block, bytes) <= 0) {
  warn("Failed to read dir block");
  return (-1);
 }
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
  return (dp->d_ino);
 }

 return (0);
}
