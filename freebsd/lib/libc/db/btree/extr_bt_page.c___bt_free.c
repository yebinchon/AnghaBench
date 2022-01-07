
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int bt_mp; int bt_free; } ;
struct TYPE_7__ {int pgno; int nextpg; int prevpg; } ;
typedef TYPE_1__ PAGE ;
typedef TYPE_2__ BTREE ;


 int B_METADIRTY ;
 int F_SET (TYPE_2__*,int ) ;
 int MPOOL_DIRTY ;
 int P_INVALID ;
 int mpool_put (int ,TYPE_1__*,int ) ;

int
__bt_free(BTREE *t, PAGE *h)
{

 h->prevpg = P_INVALID;
 h->nextpg = t->bt_free;
 t->bt_free = h->pgno;
 F_SET(t, B_METADIRTY);


 return (mpool_put(t->bt_mp, h, MPOOL_DIRTY));
}
