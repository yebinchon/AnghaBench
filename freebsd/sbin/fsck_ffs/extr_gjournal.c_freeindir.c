
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ufs2_daddr_t ;
struct TYPE_7__ {int d_error; } ;
struct TYPE_6__ {scalar_t__ fs_bsize; } ;


 int MAXBSIZE ;
 int NINDIR (TYPE_1__*) ;
 int blkfree (scalar_t__,scalar_t__) ;
 int bread (TYPE_3__*,int ,void*,size_t) ;
 TYPE_3__* diskp ;
 int err (int,char*,int ) ;
 TYPE_1__* fs ;
 int fsbtodb (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void
freeindir(ufs2_daddr_t blk, int level)
{
 char sblks[MAXBSIZE];
 ufs2_daddr_t *blks;
 int i;

 if (bread(diskp, fsbtodb(fs, blk), (void *)&sblks, (size_t)fs->fs_bsize) == -1)
  err(1, "bread: %s", diskp->d_error);
 blks = (ufs2_daddr_t *)&sblks;
 for (i = 0; i < NINDIR(fs); i++) {
  if (blks[i] == 0)
   break;
  if (level == 0)
   blkfree(blks[i], fs->fs_bsize);
  else
   freeindir(blks[i], level - 1);
 }
 blkfree(blk, fs->fs_bsize);
}
