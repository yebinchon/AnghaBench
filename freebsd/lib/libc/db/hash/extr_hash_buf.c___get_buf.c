
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_17__ {int SGSIZE; int SSHIFT; int new_file; TYPE_1__*** dir; } ;
struct TYPE_16__ {int addr; int page; struct TYPE_16__* ovfl; } ;
typedef TYPE_1__** SEGMENT ;
typedef TYPE_2__ HTAB ;
typedef TYPE_1__ BUFHEAD ;


 int BUF_DISK ;
 int BUF_REMOVE (TYPE_1__*) ;
 int ISDISK (TYPE_1__*) ;
 int MRU_INSERT (TYPE_1__*) ;
 TYPE_1__* PTROF (TYPE_1__*) ;
 scalar_t__ __get_page (TYPE_2__*,int ,int,int,int,int ) ;
 int assert (int ) ;
 TYPE_1__* newbuf (TYPE_2__*,int,TYPE_1__*) ;

BUFHEAD *
__get_buf(HTAB *hashp, u_int32_t addr,
    BUFHEAD *prev_bp,
    int newpage)
{
 BUFHEAD *bp;
 u_int32_t is_disk_mask;
 int is_disk, segment_ndx;
 SEGMENT segp;

 is_disk = 0;
 is_disk_mask = 0;
 if (prev_bp) {
  bp = prev_bp->ovfl;
  if (!bp || (bp->addr != addr))
   bp = ((void*)0);
  if (!newpage)
   is_disk = BUF_DISK;
 } else {

  segment_ndx = addr & (hashp->SGSIZE - 1);


  segp = hashp->dir[addr >> hashp->SSHIFT];



  bp = PTROF(segp[segment_ndx]);
  is_disk_mask = ISDISK(segp[segment_ndx]);
  is_disk = is_disk_mask || !hashp->new_file;
 }

 if (!bp) {
  bp = newbuf(hashp, addr, prev_bp);
  if (!bp ||
      __get_page(hashp, bp->page, addr, !prev_bp, is_disk, 0))
   return (((void*)0));
  if (!prev_bp)
   segp[segment_ndx] =
       (BUFHEAD *)((intptr_t)bp | is_disk_mask);
 } else {
  BUF_REMOVE(bp);
  MRU_INSERT(bp);
 }
 return (bp);
}
