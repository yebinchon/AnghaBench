
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lqh; } ;
typedef TYPE_1__ MPOOL ;
typedef TYPE_1__ BKT ;


 int RET_SUCCESS ;
 int TAILQ_EMPTY (int *) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int free (TYPE_1__*) ;
 int q ;

int
mpool_close(MPOOL *mp)
{
 BKT *bp;


 while (!TAILQ_EMPTY(&mp->lqh)) {
  bp = TAILQ_FIRST(&mp->lqh);
  TAILQ_REMOVE(&mp->lqh, bp, q);
  free(bp);
 }


 free(mp);
 return (RET_SUCCESS);
}
