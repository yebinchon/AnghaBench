
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int b_buf; int b_cg; int b_fs; } ;
struct bufarea {int b_errs; int b_size; int b_type; scalar_t__ b_bno; TYPE_1__ b_un; scalar_t__ b_dirty; } ;




 int blwrite (int,int ,scalar_t__,int) ;
 int cgput (int *,int ) ;
 int dev_bsize ;
 int disk ;
 int fsmodified ;
 scalar_t__ fswritefd ;
 int pfatal (char*,...) ;
 struct bufarea sblk ;
 int sbput (int,int ,int ) ;

void
flush(int fd, struct bufarea *bp)
{

 if (!bp->b_dirty)
  return;
 bp->b_dirty = 0;
 if (fswritefd < 0) {
  pfatal("WRITING IN READ_ONLY MODE.\n");
  return;
 }
 if (bp->b_errs != 0)
  pfatal("WRITING %sZERO'ED BLOCK %lld TO DISK\n",
      (bp->b_errs == bp->b_size / dev_bsize) ? "" : "PARTIALLY ",
      (long long)bp->b_bno);
 bp->b_errs = 0;



 switch (bp->b_type) {
 case 128:
  if (bp != &sblk)
   pfatal("BUFFER %p DOES NOT MATCH SBLK %p\n",
       bp, &sblk);
  if (sbput(fd, bp->b_un.b_fs, 0) == 0)
   fsmodified = 1;
  break;
 case 129:
  if (cgput(&disk, bp->b_un.b_cg) == 0)
   fsmodified = 1;
  break;
 default:
  blwrite(fd, bp->b_un.b_buf, bp->b_bno, bp->b_size);
  break;
 }
}
