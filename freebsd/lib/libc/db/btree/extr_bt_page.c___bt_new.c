
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int pgno_t ;
struct TYPE_9__ {int bt_mp; int bt_free; } ;
struct TYPE_8__ {int nextpg; } ;
typedef TYPE_1__ PAGE ;
typedef TYPE_2__ BTREE ;


 int B_METADIRTY ;
 int F_SET (TYPE_2__*,int ) ;
 int MPOOL_PAGE_NEXT ;
 int P_INVALID ;
 TYPE_1__* mpool_get (int ,int ,int ) ;
 TYPE_1__* mpool_new (int ,int *,int ) ;

PAGE *
__bt_new(BTREE *t, pgno_t *npg)
{
 PAGE *h;

 if (t->bt_free != P_INVALID &&
     (h = mpool_get(t->bt_mp, t->bt_free, 0)) != ((void*)0)) {
  *npg = t->bt_free;
  t->bt_free = h->nextpg;
  F_SET(t, B_METADIRTY);
  return (h);
 }
 return (mpool_new(t->bt_mp, npg, MPOOL_PAGE_NEXT));
}
