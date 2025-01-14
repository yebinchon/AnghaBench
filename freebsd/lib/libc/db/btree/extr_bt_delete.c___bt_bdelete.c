
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int bt_mp; } ;
struct TYPE_11__ {scalar_t__ index; int * page; } ;
typedef int PAGE ;
typedef TYPE_1__ EPG ;
typedef int DBT ;
typedef TYPE_2__ BTREE ;


 int B_NODUPS ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int MPOOL_DIRTY ;
 scalar_t__ NEXTINDEX (int *) ;
 int RET_ERROR ;
 int RET_SPECIAL ;
 int RET_SUCCESS ;
 scalar_t__ __bt_cmp (TYPE_2__*,int const*,TYPE_1__*) ;
 int __bt_dleaf (TYPE_2__*,int const*,int *,scalar_t__) ;
 scalar_t__ __bt_pdelete (TYPE_2__*,int *) ;
 TYPE_1__* __bt_search (TYPE_2__*,int const*,int*) ;
 int mpool_put (int ,int *,int ) ;

__attribute__((used)) static int
__bt_bdelete(BTREE *t, const DBT *key)
{
 EPG *e;
 PAGE *h;
 int deleted, exact, redo;

 deleted = 0;


loop: if ((e = __bt_search(t, key, &exact)) == ((void*)0))
  return (deleted ? RET_SUCCESS : RET_ERROR);
 if (!exact) {
  mpool_put(t->bt_mp, e->page, 0);
  return (deleted ? RET_SUCCESS : RET_SPECIAL);
 }






 redo = 0;
 h = e->page;
 do {
  if (__bt_dleaf(t, key, h, e->index)) {
   mpool_put(t->bt_mp, h, 0);
   return (RET_ERROR);
  }
  if (F_ISSET(t, B_NODUPS)) {
   if (NEXTINDEX(h) == 0) {
    if (__bt_pdelete(t, h))
     return (RET_ERROR);
   } else
    mpool_put(t->bt_mp, h, MPOOL_DIRTY);
   return (RET_SUCCESS);
  }
  deleted = 1;
 } while (e->index < NEXTINDEX(h) && __bt_cmp(t, key, e) == 0);


 if (e->index == NEXTINDEX(h))
  redo = 1;


 while (e->index-- > 0) {
  if (__bt_cmp(t, key, e) != 0)
   break;
  if (__bt_dleaf(t, key, h, e->index) == RET_ERROR) {
   mpool_put(t->bt_mp, h, 0);
   return (RET_ERROR);
  }
  if (e->index == 0)
   redo = 1;
 }


 if (NEXTINDEX(h) == 0) {
  if (__bt_pdelete(t, h))
   return (RET_ERROR);
  goto loop;
 }


 mpool_put(t->bt_mp, h, MPOOL_DIRTY);

 if (redo)
  goto loop;
 return (RET_SUCCESS);
}
