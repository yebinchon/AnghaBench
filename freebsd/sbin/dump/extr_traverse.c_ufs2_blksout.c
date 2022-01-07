
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int di_size; } ;
union dinode {TYPE_1__ dp2; } ;
typedef scalar_t__ ufs2_daddr_t ;
typedef int ino_t ;
struct TYPE_7__ {int fs_fsize; int fs_bsize; } ;
struct TYPE_6__ {int* c_addr; int c_count; int c_type; int c_extsize; } ;


 int TP_BSIZE ;
 int TP_NINDIR ;
 int TS_ADDR ;
 int appendextdata (union dinode*) ;
 int assert (int) ;
 int dumpblock (scalar_t__,int) ;
 int fragoff (TYPE_3__*,int ) ;
 int howmany (int,int) ;
 TYPE_3__* sblock ;
 TYPE_2__ spcl ;
 int tp_bshift ;
 int writeextdata (union dinode*,int ,int) ;
 int writeheader (int ) ;

__attribute__((used)) static void
ufs2_blksout(union dinode *dp, ufs2_daddr_t *blkp, int frags, ino_t ino,
 int last)
{
 ufs2_daddr_t *bp;
 int i, j, count, resid, blks, tbperdb, added;
 static int writingextdata = 0;






 blks = howmany(frags * sblock->fs_fsize, TP_BSIZE);
 if (last) {
  if (writingextdata)
   resid = howmany(fragoff(sblock, spcl.c_extsize),
       TP_BSIZE);
  else
   resid = howmany(fragoff(sblock, dp->dp2.di_size),
       TP_BSIZE);
  if (resid > 0)
   blks -= howmany(sblock->fs_fsize, TP_BSIZE) - resid;
 }
 tbperdb = sblock->fs_bsize >> tp_bshift;
 for (i = 0; i < blks; i += TP_NINDIR) {
  if (i + TP_NINDIR > blks)
   count = blks;
  else
   count = i + TP_NINDIR;
  assert(count <= TP_NINDIR + i);
  for (j = i; j < count; j++)
   if (blkp[j / tbperdb] != 0)
    spcl.c_addr[j - i] = 1;
   else
    spcl.c_addr[j - i] = 0;
  spcl.c_count = count - i;
  if (last && count == blks && !writingextdata)
   added = appendextdata(dp);
  writeheader(ino);
  bp = &blkp[i / tbperdb];
  for (j = i; j < count; j += tbperdb, bp++)
   if (*bp != 0) {
    if (j + tbperdb <= count)
     dumpblock(*bp, (int)sblock->fs_bsize);
    else
     dumpblock(*bp, (count - j) * TP_BSIZE);
   }
  spcl.c_type = TS_ADDR;
  spcl.c_count = 0;
  if (last && count == blks && !writingextdata) {
   writingextdata = 1;
   writeextdata(dp, ino, added);
   writingextdata = 0;
  }
 }
}
