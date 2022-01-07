
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ flags; scalar_t__ addr; int * ovfl; } ;
typedef int HTAB ;
typedef TYPE_1__ BUFHEAD ;


 int BUF_REMOVE (TYPE_1__*) ;
 int LRU_INSERT (TYPE_1__*) ;

void
__reclaim_buf(HTAB *hashp, BUFHEAD *bp)
{
 bp->ovfl = ((void*)0);
 bp->addr = 0;
 bp->flags = 0;
 BUF_REMOVE(bp);
 LRU_INSERT(bp);
}
