
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_8__ {int bt_mp; } ;
struct TYPE_7__ {int index; int * page; } ;
typedef int PAGE ;
typedef TYPE_1__ EPG ;
typedef TYPE_2__ BTREE ;


 int MPOOL_DIRTY ;
 int RET_ERROR ;
 int RET_SUCCESS ;
 int SDELETE ;
 int __rec_dleaf (TYPE_2__*,int *,int ) ;
 TYPE_1__* __rec_search (TYPE_2__*,int ,int ) ;
 int mpool_put (int ,int *,int ) ;

__attribute__((used)) static int
rec_rdelete(BTREE *t, recno_t nrec)
{
 EPG *e;
 PAGE *h;
 int status;


 if ((e = __rec_search(t, nrec, SDELETE)) == ((void*)0))
  return (RET_ERROR);


 h = e->page;
 status = __rec_dleaf(t, h, e->index);
 if (status != RET_SUCCESS) {
  mpool_put(t->bt_mp, h, 0);
  return (status);
 }
 mpool_put(t->bt_mp, h, MPOOL_DIRTY);
 return (RET_SUCCESS);
}
