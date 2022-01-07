
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct _hqh {int dummy; } ;
typedef void* pgno_t ;
struct TYPE_9__ {int flags; void* page; void* pgno; } ;
struct TYPE_8__ {scalar_t__ npages; int lqh; struct _hqh* hqh; int pagenew; } ;
typedef TYPE_1__ MPOOL ;
typedef TYPE_2__ BKT ;


 size_t HASHKEY (void*) ;
 scalar_t__ MAX_PAGE_NUMBER ;
 int MPOOL_INUSE ;
 scalar_t__ MPOOL_PAGE_REQUEST ;
 int MPOOL_PINNED ;
 int TAILQ_INSERT_HEAD (struct _hqh*,TYPE_2__*,int ) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int abort () ;
 int fprintf (int ,char*) ;
 int hq ;
 TYPE_2__* mpool_bkt (TYPE_1__*) ;
 int q ;
 int stderr ;

void *
mpool_new(MPOOL *mp, pgno_t *pgnoaddr, u_int flags)
{
 struct _hqh *head;
 BKT *bp;

 if (mp->npages == MAX_PAGE_NUMBER) {
  (void)fprintf(stderr, "mpool_new: page allocation overflow.\n");
  abort();
 }
 if ((bp = mpool_bkt(mp)) == ((void*)0))
  return (((void*)0));
 if (flags == MPOOL_PAGE_REQUEST) {
  mp->npages++;
  bp->pgno = *pgnoaddr;
 } else
  bp->pgno = *pgnoaddr = mp->npages++;

 bp->flags = MPOOL_PINNED | MPOOL_INUSE;

 head = &mp->hqh[HASHKEY(bp->pgno)];
 TAILQ_INSERT_HEAD(head, bp, hq);
 TAILQ_INSERT_TAIL(&mp->lqh, bp, q);
 return (bp->page);
}
