
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ufs2_daddr_t ;
struct timespec {int dummy; } ;
struct TYPE_2__ {int b_buf; } ;
struct bufarea {scalar_t__ b_bno; size_t b_type; long b_size; TYPE_1__ b_un; int b_errs; } ;


 int CLOCK_REALTIME_PRECISE ;
 int blread (int ,int ,scalar_t__,long) ;
 int clock_gettime (int ,struct timespec*) ;
 scalar_t__ debug ;
 int flush (int ,struct bufarea*) ;
 scalar_t__ fsbtodb (int *,scalar_t__) ;
 int fsreadfd ;
 int fswritefd ;
 int * readcnt ;
 int * readtime ;
 int sblock ;
 int timespecadd (int *,struct timespec*,int *) ;
 int timespecsub (struct timespec*,struct timespec*,struct timespec*) ;
 int totalreads ;

void
getblk(struct bufarea *bp, ufs2_daddr_t blk, long size)
{
 ufs2_daddr_t dblk;
 struct timespec start, finish;

 dblk = fsbtodb(&sblock, blk);
 if (bp->b_bno == dblk) {
  totalreads++;
 } else {
  flush(fswritefd, bp);
  if (debug) {
   readcnt[bp->b_type]++;
   clock_gettime(CLOCK_REALTIME_PRECISE, &start);
  }
  bp->b_errs = blread(fsreadfd, bp->b_un.b_buf, dblk, size);
  if (debug) {
   clock_gettime(CLOCK_REALTIME_PRECISE, &finish);
   timespecsub(&finish, &start, &finish);
   timespecadd(&readtime[bp->b_type], &finish,
       &readtime[bp->b_type]);
  }
  bp->b_bno = dblk;
  bp->b_size = size;
 }
}
