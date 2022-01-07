
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int pgno_t ;
typedef int indx_t ;
struct TYPE_15__ {int index; int pgno; } ;
struct TYPE_18__ {TYPE_1__ pg; int key; } ;
struct TYPE_19__ {int bt_mp; TYPE_4__ bt_cursor; } ;
struct TYPE_17__ {int index; TYPE_2__* page; } ;
struct TYPE_16__ {int prevpg; int nextpg; } ;
typedef TYPE_2__ PAGE ;
typedef TYPE_3__ EPG ;
typedef TYPE_4__ CURSOR ;
typedef TYPE_5__ BTREE ;


 int CURS_ACQUIRE ;
 int CURS_AFTER ;
 int CURS_BEFORE ;
 int F_CLR (TYPE_4__*,int) ;
 scalar_t__ F_ISSET (TYPE_4__*,int) ;
 int NEXTINDEX (TYPE_2__*) ;
 int P_INVALID ;
 int RET_ERROR ;
 int RET_SPECIAL ;
 int RET_SUCCESS ;


 int __bt_first (TYPE_5__*,int *,TYPE_3__*,int*) ;
 TYPE_2__* mpool_get (int ,int ,int ) ;
 int mpool_put (int ,TYPE_2__*,int ) ;

__attribute__((used)) static int
__bt_seqadv(BTREE *t, EPG *ep, int flags)
{
 CURSOR *c;
 PAGE *h;
 indx_t idx;
 pgno_t pg;
 int exact;





 c = &t->bt_cursor;
 if (F_ISSET(c, CURS_ACQUIRE))
  return (__bt_first(t, &c->key, ep, &exact));


 if ((h = mpool_get(t->bt_mp, c->pg.pgno, 0)) == ((void*)0))
  return (RET_ERROR);





 switch (flags) {
 case 129:





  if (F_ISSET(c, CURS_AFTER))
   goto usecurrent;
  idx = c->pg.index;
  if (++idx == NEXTINDEX(h)) {
   pg = h->nextpg;
   mpool_put(t->bt_mp, h, 0);
   if (pg == P_INVALID)
    return (RET_SPECIAL);
   if ((h = mpool_get(t->bt_mp, pg, 0)) == ((void*)0))
    return (RET_ERROR);
   idx = 0;
  }
  break;
 case 128:





  if (F_ISSET(c, CURS_BEFORE)) {
usecurrent: F_CLR(c, CURS_AFTER | CURS_BEFORE);
   ep->page = h;
   ep->index = c->pg.index;
   return (RET_SUCCESS);
  }
  idx = c->pg.index;
  if (idx == 0) {
   pg = h->prevpg;
   mpool_put(t->bt_mp, h, 0);
   if (pg == P_INVALID)
    return (RET_SPECIAL);
   if ((h = mpool_get(t->bt_mp, pg, 0)) == ((void*)0))
    return (RET_ERROR);
   idx = NEXTINDEX(h) - 1;
  } else
   --idx;
  break;
 }

 ep->page = h;
 ep->index = idx;
 return (RET_SUCCESS);
}
