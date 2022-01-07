
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ufs1_daddr_t ;
typedef int ino_t ;
struct TYPE_4__ {int fs_fsize; int fs_bsize; } ;
struct TYPE_3__ {int* c_addr; int c_count; int c_type; } ;


 int TP_BSIZE ;
 int TP_NINDIR ;
 int TS_ADDR ;
 int assert (int) ;
 int dumpblock (scalar_t__,int) ;
 int howmany (int,int) ;
 TYPE_2__* sblock ;
 TYPE_1__ spcl ;
 int tp_bshift ;
 int writeheader (int ) ;

__attribute__((used)) static void
ufs1_blksout(ufs1_daddr_t *blkp, int frags, ino_t ino)
{
 ufs1_daddr_t *bp;
 int i, j, count, blks, tbperdb;

 blks = howmany(frags * sblock->fs_fsize, TP_BSIZE);
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
 }
}
