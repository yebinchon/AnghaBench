
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_15__ ;


typedef int pgno_t ;
typedef int indx_t ;
struct TYPE_22__ {int index; TYPE_1__* page; } ;
struct TYPE_23__ {int bt_mp; TYPE_2__ bt_cur; } ;
struct TYPE_21__ {int flags; scalar_t__ prevpg; scalar_t__ nextpg; int pgno; } ;
struct TYPE_20__ {int pgno; } ;
typedef TYPE_1__ PAGE ;
typedef TYPE_2__ EPG ;
typedef int DBT ;
typedef TYPE_3__ BTREE ;


 int BT_CLR (TYPE_3__*) ;
 int BT_PUSH (TYPE_3__*,int ,int) ;
 int B_NODUPS ;
 int F_ISSET (TYPE_3__*,int ) ;
 TYPE_15__* GETBINTERNAL (TYPE_1__*,int) ;
 int NEXTINDEX (TYPE_1__*) ;
 int P_BLEAF ;
 scalar_t__ P_INVALID ;
 int P_ROOT ;
 int __bt_cmp (TYPE_3__*,int const*,TYPE_2__*) ;
 scalar_t__ __bt_snext (TYPE_3__*,TYPE_1__*,int const*,int*) ;
 scalar_t__ __bt_sprev (TYPE_3__*,TYPE_1__*,int const*,int*) ;
 TYPE_1__* mpool_get (int ,int ,int ) ;
 int mpool_put (int ,TYPE_1__*,int ) ;

EPG *
__bt_search(BTREE *t, const DBT *key, int *exactp)
{
 PAGE *h;
 indx_t base, idx, lim;
 pgno_t pg;
 int cmp;

 BT_CLR(t);
 for (pg = P_ROOT;;) {
  if ((h = mpool_get(t->bt_mp, pg, 0)) == ((void*)0))
   return (((void*)0));


  t->bt_cur.page = h;
  for (base = 0, lim = NEXTINDEX(h); lim; lim >>= 1) {
   t->bt_cur.index = idx = base + (lim >> 1);
   if ((cmp = __bt_cmp(t, key, &t->bt_cur)) == 0) {
    if (h->flags & P_BLEAF) {
     *exactp = 1;
     return (&t->bt_cur);
    }
    goto next;
   }
   if (cmp > 0) {
    base = idx + 1;
    --lim;
   }
  }
  if (h->flags & P_BLEAF) {
   if (!F_ISSET(t, B_NODUPS)) {
    if (base == 0 &&
        h->prevpg != P_INVALID &&
        __bt_sprev(t, h, key, exactp))
     return (&t->bt_cur);
    if (base == NEXTINDEX(h) &&
        h->nextpg != P_INVALID &&
        __bt_snext(t, h, key, exactp))
     return (&t->bt_cur);
   }
   *exactp = 0;
   t->bt_cur.index = base;
   return (&t->bt_cur);
  }
  idx = base ? base - 1 : base;

next: BT_PUSH(t, h->pgno, idx);
  pg = GETBINTERNAL(h, idx)->pgno;
  mpool_put(t->bt_mp, h, 0);
 }
}
