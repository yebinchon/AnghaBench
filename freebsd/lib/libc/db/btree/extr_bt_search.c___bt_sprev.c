
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* page; scalar_t__ index; } ;
struct TYPE_13__ {int bt_mp; TYPE_2__ bt_cur; } ;
struct TYPE_11__ {int prevpg; } ;
typedef TYPE_1__ PAGE ;
typedef TYPE_2__ EPG ;
typedef int DBT ;
typedef TYPE_3__ BTREE ;


 scalar_t__ NEXTINDEX (TYPE_1__*) ;
 scalar_t__ __bt_cmp (TYPE_3__*,int const*,TYPE_2__*) ;
 TYPE_1__* mpool_get (int ,int ,int ) ;
 int mpool_put (int ,TYPE_1__*,int ) ;

__attribute__((used)) static int
__bt_sprev(BTREE *t, PAGE *h, const DBT *key, int *exactp)
{
 EPG e;





 if ((e.page = mpool_get(t->bt_mp, h->prevpg, 0)) == ((void*)0))
  return (0);
 e.index = NEXTINDEX(e.page) - 1;
 if (__bt_cmp(t, key, &e) == 0) {
  mpool_put(t->bt_mp, h, 0);
  t->bt_cur = e;
  *exactp = 1;
  return (1);
 }
 mpool_put(t->bt_mp, e.page, 0);
 return (0);
}
