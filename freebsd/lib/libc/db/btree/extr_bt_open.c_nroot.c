
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ pgno_t ;
struct TYPE_10__ {int bt_mp; int bt_psize; } ;
struct TYPE_9__ {scalar_t__ lower; scalar_t__ pgno; scalar_t__* linp; int flags; int upper; int nextpg; int prevpg; } ;
typedef TYPE_1__ PAGE ;
typedef TYPE_2__ BTREE ;


 scalar_t__ BTDATAOFF ;
 scalar_t__ EINVAL ;
 int MPOOL_DIRTY ;
 int MPOOL_PAGE_NEXT ;
 int P_BLEAF ;
 int P_INVALID ;
 scalar_t__ P_ROOT ;
 int RET_ERROR ;
 int RET_SUCCESS ;
 scalar_t__ errno ;
 int memset (TYPE_1__*,int ,int ) ;
 int mpool_delete (int ,TYPE_1__*) ;
 TYPE_1__* mpool_get (int ,int,int ) ;
 TYPE_1__* mpool_new (int ,scalar_t__*,int ) ;
 int mpool_put (int ,TYPE_1__*,int ) ;

__attribute__((used)) static int
nroot(BTREE *t)
{
 PAGE *meta, *root;
 pgno_t npg;

 if ((root = mpool_get(t->bt_mp, 1, 0)) != ((void*)0)) {
  if (root->lower == 0 &&
      root->pgno == 0 &&
      root->linp[0] == 0) {
   mpool_delete(t->bt_mp, root);
   errno = EINVAL;
  } else {
   mpool_put(t->bt_mp, root, 0);
   return (RET_SUCCESS);
  }
 }
 if (errno != EINVAL)
  return (RET_ERROR);
 errno = 0;

 if ((meta = mpool_new(t->bt_mp, &npg, MPOOL_PAGE_NEXT)) == ((void*)0))
  return (RET_ERROR);

 if ((root = mpool_new(t->bt_mp, &npg, MPOOL_PAGE_NEXT)) == ((void*)0))
  return (RET_ERROR);

 if (npg != P_ROOT)
  return (RET_ERROR);
 root->pgno = npg;
 root->prevpg = root->nextpg = P_INVALID;
 root->lower = BTDATAOFF;
 root->upper = t->bt_psize;
 root->flags = P_BLEAF;
 memset(meta, 0, t->bt_psize);
 mpool_put(t->bt_mp, meta, MPOOL_DIRTY);
 mpool_put(t->bt_mp, root, MPOOL_DIRTY);
 return (RET_SUCCESS);
}
