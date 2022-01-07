
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int16_t ;
struct TYPE_15__ {scalar_t__ nbufs; int BSIZE; int SGSIZE; size_t SSHIFT; scalar_t__ new_file; TYPE_1__*** dir; TYPE_1__* cpage; } ;
struct TYPE_14__ {int flags; char* page; int addr; struct TYPE_14__* ovfl; } ;
typedef TYPE_1__** SEGMENT ;
typedef TYPE_2__ HTAB ;
typedef TYPE_1__ BUFHEAD ;


 int BUF_BUCKET ;
 scalar_t__ BUF_DISK ;
 int BUF_MOD ;
 int BUF_PIN ;
 int BUF_REMOVE (TYPE_1__*) ;
 scalar_t__ ISDISK (TYPE_1__*) ;
 scalar_t__ IS_BUCKET (int) ;
 TYPE_1__* LRU ;
 int LRU_INSERT (TYPE_1__*) ;
 int MRU_INSERT (TYPE_1__*) ;
 scalar_t__ __put_page (TYPE_2__*,char*,int,int,int ) ;
 int assert (int ) ;
 scalar_t__ calloc (int,int) ;
 int fprintf (int ,char*,int,int,int) ;
 int free (TYPE_1__*) ;
 int stderr ;

__attribute__((used)) static BUFHEAD *
newbuf(HTAB *hashp, u_int32_t addr, BUFHEAD *prev_bp)
{
 BUFHEAD *bp;
 BUFHEAD *xbp;
 BUFHEAD *next_xbp;
 SEGMENT segp;
 int segment_ndx;
 u_int16_t oaddr, *shortp;

 oaddr = 0;
 bp = LRU;


        if (bp == hashp->cpage) {
                BUF_REMOVE(bp);
                MRU_INSERT(bp);
                bp = LRU;
        }


 if (hashp->nbufs == 0 && prev_bp && bp->ovfl) {
  BUFHEAD *ovfl;

  for (ovfl = bp->ovfl; ovfl ; ovfl = ovfl->ovfl) {
   if (ovfl == prev_bp) {
    hashp->nbufs++;
    break;
   }
  }
 }





 if (hashp->nbufs || (bp->flags & BUF_PIN) || bp == hashp->cpage) {

  if ((bp = (BUFHEAD *)calloc(1, sizeof(BUFHEAD))) == ((void*)0))
   return (((void*)0));
  if ((bp->page = (char *)calloc(1, hashp->BSIZE)) == ((void*)0)) {
   free(bp);
   return (((void*)0));
  }
  if (hashp->nbufs)
   hashp->nbufs--;
 } else {

  BUF_REMOVE(bp);




  if ((bp->addr != 0) || (bp->flags & BUF_BUCKET)) {




   shortp = (u_int16_t *)bp->page;
   if (shortp[0])
    oaddr = shortp[shortp[0] - 1];
   if ((bp->flags & BUF_MOD) && __put_page(hashp, bp->page,
       bp->addr, (int)IS_BUCKET(bp->flags), 0))
    return (((void*)0));
   if (IS_BUCKET(bp->flags)) {
    segment_ndx = bp->addr & (hashp->SGSIZE - 1);
    segp = hashp->dir[bp->addr >> hashp->SSHIFT];




    if (hashp->new_file &&
        ((bp->flags & BUF_MOD) ||
        ISDISK(segp[segment_ndx])))
     segp[segment_ndx] = (BUFHEAD *)BUF_DISK;
    else
     segp[segment_ndx] = ((void*)0);
   }





   for (xbp = bp; xbp->ovfl;) {
    next_xbp = xbp->ovfl;
    xbp->ovfl = ((void*)0);
    xbp = next_xbp;


    if (IS_BUCKET(xbp->flags) ||
        (oaddr != xbp->addr))
     break;

    shortp = (u_int16_t *)xbp->page;
    if (shortp[0])

     oaddr = shortp[shortp[0] - 1];
    if ((xbp->flags & BUF_MOD) && __put_page(hashp,
        xbp->page, xbp->addr, 0, 0))
     return (((void*)0));
    xbp->addr = 0;
    xbp->flags = 0;
    BUF_REMOVE(xbp);
    LRU_INSERT(xbp);
   }
  }
 }


 bp->addr = addr;




 bp->ovfl = ((void*)0);
 if (prev_bp) {
  prev_bp->ovfl = bp;
  bp->flags = 0;
 } else
  bp->flags = BUF_BUCKET;
 MRU_INSERT(bp);
 return (bp);
}
