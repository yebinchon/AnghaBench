
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int bt_mp; } ;
struct TYPE_7__ {scalar_t__ nextpg; scalar_t__ prevpg; } ;
typedef TYPE_1__ PAGE ;
typedef TYPE_2__ BTREE ;


 int MPOOL_DIRTY ;
 scalar_t__ P_INVALID ;
 int RET_ERROR ;
 TYPE_1__* mpool_get (int ,scalar_t__,int ) ;
 int mpool_put (int ,TYPE_1__*,int ) ;

__attribute__((used)) static int
__bt_relink(BTREE *t, PAGE *h)
{
 PAGE *pg;

 if (h->nextpg != P_INVALID) {
  if ((pg = mpool_get(t->bt_mp, h->nextpg, 0)) == ((void*)0))
   return (RET_ERROR);
  pg->prevpg = h->prevpg;
  mpool_put(t->bt_mp, pg, MPOOL_DIRTY);
 }
 if (h->prevpg != P_INVALID) {
  if ((pg = mpool_get(t->bt_mp, h->prevpg, 0)) == ((void*)0))
   return (RET_ERROR);
  pg->nextpg = h->nextpg;
  mpool_put(t->bt_mp, pg, MPOOL_DIRTY);
 }
 return (0);
}
