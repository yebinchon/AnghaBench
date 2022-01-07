
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int flags; struct TYPE_11__* prev; struct TYPE_11__* page; scalar_t__ addr; } ;
struct TYPE_10__ {int BSIZE; TYPE_2__ bufhead; } ;
typedef TYPE_1__ HTAB ;
typedef TYPE_2__ BUFHEAD ;


 int BUF_MOD ;
 int BUF_REMOVE (TYPE_2__*) ;
 scalar_t__ IS_BUCKET (int) ;
 TYPE_2__* LRU ;
 scalar_t__ __put_page (TYPE_1__*,TYPE_2__*,scalar_t__,scalar_t__,int ) ;
 int free (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int ) ;

int
__buf_free(HTAB *hashp, int do_free, int to_disk)
{
 BUFHEAD *bp;


 if (!LRU)
  return (0);
 for (bp = LRU; bp != &hashp->bufhead;) {

  if (bp->addr || IS_BUCKET(bp->flags)) {
   if (to_disk && (bp->flags & BUF_MOD) &&
       __put_page(hashp, bp->page,
       bp->addr, IS_BUCKET(bp->flags), 0))
    return (-1);
  }

  if (do_free) {
   if (bp->page) {
    (void)memset(bp->page, 0, hashp->BSIZE);
    free(bp->page);
   }
   BUF_REMOVE(bp);
   free(bp);
   bp = LRU;
  } else
   bp = bp->prev;
 }
 return (0);
}
