
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct _hqh {int dummy; } ;
struct TYPE_7__ {int flags; int pgno; } ;
struct TYPE_6__ {int curcache; struct _hqh lqh; struct _hqh* hqh; } ;
typedef TYPE_1__ MPOOL ;
typedef TYPE_2__ BKT ;


 size_t HASHKEY (int) ;
 int MPOOL_PINNED ;
 int RET_SUCCESS ;
 int TAILQ_REMOVE (struct _hqh*,TYPE_2__*,int ) ;
 int abort () ;
 int fprintf (int ,char*,int) ;
 int free (TYPE_2__*) ;
 int hq ;
 int q ;
 int stderr ;

int
mpool_delete(MPOOL *mp, void *page)
{
 struct _hqh *head;
 BKT *bp;

 bp = (BKT *)((char *)page - sizeof(BKT));
 head = &mp->hqh[HASHKEY(bp->pgno)];
 TAILQ_REMOVE(head, bp, hq);
 TAILQ_REMOVE(&mp->lqh, bp, q);

 free(bp);
 mp->curcache--;
 return (RET_SUCCESS);
}
