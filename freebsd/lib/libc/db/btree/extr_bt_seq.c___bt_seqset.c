
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef int pgno_t ;
struct TYPE_20__ {int bt_mp; } ;
struct TYPE_19__ {int size; int * data; } ;
struct TYPE_18__ {int index; TYPE_1__* page; } ;
struct TYPE_17__ {int flags; } ;
struct TYPE_16__ {int pgno; } ;
typedef TYPE_1__ PAGE ;
typedef TYPE_2__ EPG ;
typedef TYPE_3__ DBT ;
typedef TYPE_4__ BTREE ;


 int EINVAL ;
 TYPE_14__* GETBINTERNAL (TYPE_1__*,int ) ;
 int NEXTINDEX (TYPE_1__*) ;
 int P_BLEAF ;
 int P_RLEAF ;
 int P_ROOT ;
 int RET_ERROR ;
 int RET_SPECIAL ;
 int RET_SUCCESS ;





 int __bt_first (TYPE_4__*,TYPE_3__*,TYPE_2__*,int*) ;
 int errno ;
 TYPE_1__* mpool_get (int ,int ,int ) ;
 int mpool_put (int ,TYPE_1__*,int ) ;

__attribute__((used)) static int
__bt_seqset(BTREE *t, EPG *ep, DBT *key, int flags)
{
 PAGE *h;
 pgno_t pg;
 int exact;






 switch (flags) {
 case 132:




  if (key->data == ((void*)0) || key->size == 0) {
   errno = EINVAL;
   return (RET_ERROR);
  }
  return (__bt_first(t, key, ep, &exact));
 case 131:
 case 129:

  for (pg = P_ROOT;;) {
   if ((h = mpool_get(t->bt_mp, pg, 0)) == ((void*)0))
    return (RET_ERROR);


   if (NEXTINDEX(h) == 0) {
    mpool_put(t->bt_mp, h, 0);
    return (RET_SPECIAL);
   }

   if (h->flags & (P_BLEAF | P_RLEAF))
    break;
   pg = GETBINTERNAL(h, 0)->pgno;
   mpool_put(t->bt_mp, h, 0);
  }
  ep->page = h;
  ep->index = 0;
  break;
 case 130:
 case 128:

  for (pg = P_ROOT;;) {
   if ((h = mpool_get(t->bt_mp, pg, 0)) == ((void*)0))
    return (RET_ERROR);


   if (NEXTINDEX(h) == 0) {
    mpool_put(t->bt_mp, h, 0);
    return (RET_SPECIAL);
   }

   if (h->flags & (P_BLEAF | P_RLEAF))
    break;
   pg = GETBINTERNAL(h, NEXTINDEX(h) - 1)->pgno;
   mpool_put(t->bt_mp, h, 0);
  }

  ep->page = h;
  ep->index = NEXTINDEX(h) - 1;
  break;
 }
 return (RET_SUCCESS);
}
