
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ufs2_daddr_t ;
struct TYPE_6__ {TYPE_1__* req; } ;
struct TYPE_5__ {int c_tapea; } ;
struct TYPE_4__ {int dblk; int count; } ;


 int MIN (int,size_t) ;
 int dev_bshift ;
 int flushtape () ;
 int fsbtodb (int ,int) ;
 size_t ntrec ;
 int sblock ;
 TYPE_3__* slp ;
 TYPE_2__ spcl ;
 int tp_bshift ;
 size_t trecno ;

void
dumpblock(ufs2_daddr_t blkno, int size)
{
 int avail, tpblks;
 ufs2_daddr_t dblkno;

 dblkno = fsbtodb(sblock, blkno);
 tpblks = size >> tp_bshift;
 while ((avail = MIN(tpblks, ntrec - trecno)) > 0) {
  slp->req[trecno].dblk = dblkno;
  slp->req[trecno].count = avail;
  trecno += avail;
  spcl.c_tapea += avail;
  if (trecno >= ntrec)
   flushtape();
  dblkno += avail << (tp_bshift - dev_bshift);
  tpblks -= avail;
 }
}
