
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
typedef scalar_t__ pgno_t ;
typedef int indx_t ;
struct TYPE_27__ {scalar_t__ pgno; } ;
struct TYPE_26__ {int bt_mp; } ;
struct TYPE_21__ {scalar_t__ pgno; } ;
struct TYPE_25__ {TYPE_1__ pg; int key; } ;
struct TYPE_24__ {TYPE_2__* page; } ;
struct TYPE_23__ {scalar_t__ pgno; int index; } ;
struct TYPE_22__ {scalar_t__ pgno; scalar_t__ nextpg; scalar_t__ prevpg; } ;
typedef TYPE_2__ PAGE ;
typedef TYPE_3__ EPGNO ;
typedef TYPE_4__ EPG ;
typedef TYPE_5__ CURSOR ;
typedef TYPE_6__ BTREE ;
typedef TYPE_7__ BINTERNAL ;


 TYPE_3__* BT_POP (TYPE_6__*) ;
 int BT_PUSH (TYPE_6__*,scalar_t__,int) ;
 TYPE_7__* GETBINTERNAL (TYPE_2__*,int) ;
 int NEXTINDEX (TYPE_2__*) ;
 scalar_t__ P_INVALID ;
 TYPE_4__* __bt_search (TYPE_6__*,int *,int*) ;
 TYPE_2__* mpool_get (int ,scalar_t__,int ) ;
 int mpool_put (int ,TYPE_2__*,int ) ;

__attribute__((used)) static int
__bt_stkacq(BTREE *t, PAGE **hp, CURSOR *c)
{
 BINTERNAL *bi;
 EPG *e;
 EPGNO *parent;
 PAGE *h;
 indx_t idx;
 pgno_t pgno;
 recno_t nextpg, prevpg;
 int exact, level;





 h = *hp;
 mpool_put(t->bt_mp, h, 0);
 if ((e = __bt_search(t, &c->key, &exact)) == ((void*)0))
  return (1);
 h = e->page;


 if (h->pgno == c->pg.pgno)
  goto ret;







 while (h->pgno != c->pg.pgno) {
  if ((nextpg = h->nextpg) == P_INVALID)
   break;
  mpool_put(t->bt_mp, h, 0);


  for (level = 0; (parent = BT_POP(t)) != ((void*)0); ++level) {

   if ((h = mpool_get(t->bt_mp, parent->pgno, 0)) == ((void*)0))
    return (1);


   if (parent->index != NEXTINDEX(h) - 1) {
    idx = parent->index + 1;
    BT_PUSH(t, h->pgno, idx);
    break;
   }
   mpool_put(t->bt_mp, h, 0);
  }


  while (level--) {

   bi = GETBINTERNAL(h, idx);
   pgno = bi->pgno;
   BT_PUSH(t, pgno, 0);


   mpool_put(t->bt_mp, h, 0);


   if ((h = mpool_get(t->bt_mp, pgno, 0)) == ((void*)0))
    return (1);
   idx = 0;
  }
  mpool_put(t->bt_mp, h, 0);
  if ((h = mpool_get(t->bt_mp, nextpg, 0)) == ((void*)0))
   return (1);
 }

 if (h->pgno == c->pg.pgno)
  goto ret;


 mpool_put(t->bt_mp, h, 0);
 if ((e = __bt_search(t, &c->key, &exact)) == ((void*)0))
  return (1);
 h = e->page;







 while (h->pgno != c->pg.pgno) {
  if ((prevpg = h->prevpg) == P_INVALID)
   break;
  mpool_put(t->bt_mp, h, 0);


  for (level = 0; (parent = BT_POP(t)) != ((void*)0); ++level) {

   if ((h = mpool_get(t->bt_mp, parent->pgno, 0)) == ((void*)0))
    return (1);


   if (parent->index != 0) {
    idx = parent->index - 1;
    BT_PUSH(t, h->pgno, idx);
    break;
   }
   mpool_put(t->bt_mp, h, 0);
  }


  while (level--) {

   bi = GETBINTERNAL(h, idx);
   pgno = bi->pgno;


   mpool_put(t->bt_mp, h, 0);


   if ((h = mpool_get(t->bt_mp, pgno, 0)) == ((void*)0))
    return (1);

   idx = NEXTINDEX(h) - 1;
   BT_PUSH(t, pgno, idx);
  }
  mpool_put(t->bt_mp, h, 0);
  if ((h = mpool_get(t->bt_mp, prevpg, 0)) == ((void*)0))
   return (1);
 }


ret: mpool_put(t->bt_mp, h, 0);
 return ((*hp = mpool_get(t->bt_mp, c->pg.pgno, 0)) == ((void*)0));
}
