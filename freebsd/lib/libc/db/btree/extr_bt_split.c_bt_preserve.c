
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pgno_t ;
struct TYPE_7__ {int bt_mp; } ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ PAGE ;
typedef TYPE_2__ BTREE ;


 int MPOOL_DIRTY ;
 int P_PRESERVE ;
 int RET_ERROR ;
 int RET_SUCCESS ;
 TYPE_1__* mpool_get (int ,int ,int ) ;
 int mpool_put (int ,TYPE_1__*,int ) ;

__attribute__((used)) static int
bt_preserve(BTREE *t, pgno_t pg)
{
 PAGE *h;

 if ((h = mpool_get(t->bt_mp, pg, 0)) == ((void*)0))
  return (RET_ERROR);
 h->flags |= P_PRESERVE;
 mpool_put(t->bt_mp, h, MPOOL_DIRTY);
 return (RET_SUCCESS);
}
