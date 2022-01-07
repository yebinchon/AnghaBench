
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_5__ {int flags; int pgno; } ;
struct TYPE_4__ {int pageput; } ;
typedef TYPE_1__ MPOOL ;
typedef TYPE_2__ BKT ;


 int MPOOL_DIRTY ;
 int MPOOL_PINNED ;
 int RET_SUCCESS ;
 int abort () ;
 int fprintf (int ,char*,int) ;
 int stderr ;

int
mpool_put(MPOOL *mp, void *page, u_int flags)
{
 BKT *bp;




 bp = (BKT *)((char *)page - sizeof(BKT));







 bp->flags &= ~MPOOL_PINNED;
 if (flags & MPOOL_DIRTY)
  bp->flags |= flags & MPOOL_DIRTY;
 return (RET_SUCCESS);
}
