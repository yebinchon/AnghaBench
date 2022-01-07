
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t u_int32_t ;
typedef int pgno_t ;
struct TYPE_11__ {int bt_psize; int bt_mp; } ;
struct TYPE_10__ {size_t size; void* data; } ;
struct TYPE_9__ {int pgno; int nextpg; scalar_t__ upper; scalar_t__ lower; int flags; int prevpg; } ;
typedef TYPE_1__ PAGE ;
typedef TYPE_2__ DBT ;
typedef TYPE_3__ BTREE ;


 int BTDATAOFF ;
 size_t MIN (size_t,size_t) ;
 int MPOOL_DIRTY ;
 int P_INVALID ;
 int P_OVERFLOW ;
 int RET_ERROR ;
 int RET_SUCCESS ;
 TYPE_1__* __bt_new (TYPE_3__*,int *) ;
 int memmove (char*,void*,size_t) ;
 int mpool_put (int ,TYPE_1__*,int ) ;

int
__ovfl_put(BTREE *t, const DBT *dbt, pgno_t *pg)
{
 PAGE *h, *last;
 void *p;
 pgno_t npg;
 size_t nb, plen;
 u_int32_t sz;





 plen = t->bt_psize - BTDATAOFF;
 for (last = ((void*)0), p = dbt->data, sz = dbt->size;;
     p = (char *)p + plen, last = h) {
  if ((h = __bt_new(t, &npg)) == ((void*)0))
   return (RET_ERROR);

  h->pgno = npg;
  h->nextpg = h->prevpg = P_INVALID;
  h->flags = P_OVERFLOW;
  h->lower = h->upper = 0;

  nb = MIN(sz, plen);
  memmove((char *)h + BTDATAOFF, p, nb);

  if (last) {
   last->nextpg = h->pgno;
   mpool_put(t->bt_mp, last, MPOOL_DIRTY);
  } else
   *pg = h->pgno;

  if ((sz -= nb) == 0) {
   mpool_put(t->bt_mp, h, MPOOL_DIRTY);
   break;
  }
 }
 return (RET_SUCCESS);
}
