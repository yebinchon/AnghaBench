
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
typedef int pgno_t ;
typedef scalar_t__ indx_t ;
typedef enum SRCHOP { ____Placeholder_SRCHOP } SRCHOP ;
struct TYPE_20__ {scalar_t__ index; TYPE_2__* page; } ;
struct TYPE_21__ {int bt_mp; TYPE_4__ bt_cur; } ;
struct TYPE_19__ {scalar_t__ index; int pgno; } ;
struct TYPE_18__ {int flags; } ;
struct TYPE_17__ {scalar_t__ nrecs; int pgno; } ;
typedef TYPE_1__ RINTERNAL ;
typedef TYPE_2__ PAGE ;
typedef TYPE_3__ EPGNO ;
typedef TYPE_4__ EPG ;
typedef TYPE_5__ BTREE ;


 int BT_CLR (TYPE_5__*) ;
 TYPE_3__* BT_POP (TYPE_5__*) ;
 int BT_PUSH (TYPE_5__*,int ,scalar_t__) ;
 TYPE_1__* GETRINTERNAL (TYPE_2__*,scalar_t__) ;
 int MPOOL_DIRTY ;
 scalar_t__ NEXTINDEX (TYPE_2__*) ;
 int P_RLEAF ;
 int P_ROOT ;



 int errno ;
 TYPE_2__* mpool_get (int ,int ,int ) ;
 int mpool_put (int ,TYPE_2__*,int ) ;

EPG *
__rec_search(BTREE *t, recno_t recno, enum SRCHOP op)
{
 indx_t idx;
 PAGE *h;
 EPGNO *parent;
 RINTERNAL *r;
 pgno_t pg;
 indx_t top;
 recno_t total;
 int sverrno;

 BT_CLR(t);
 for (pg = P_ROOT, total = 0;;) {
  if ((h = mpool_get(t->bt_mp, pg, 0)) == ((void*)0))
   goto err;
  if (h->flags & P_RLEAF) {
   t->bt_cur.page = h;
   t->bt_cur.index = recno - total;
   return (&t->bt_cur);
  }
  for (idx = 0, top = NEXTINDEX(h);;) {
   r = GETRINTERNAL(h, idx);
   if (++idx == top || total + r->nrecs > recno)
    break;
   total += r->nrecs;
  }

  BT_PUSH(t, pg, idx - 1);

  pg = r->pgno;
  switch (op) {
  case 130:
   --GETRINTERNAL(h, (idx - 1))->nrecs;
   mpool_put(t->bt_mp, h, MPOOL_DIRTY);
   break;
  case 128:
   ++GETRINTERNAL(h, (idx - 1))->nrecs;
   mpool_put(t->bt_mp, h, MPOOL_DIRTY);
   break;
  case 129:
   mpool_put(t->bt_mp, h, 0);
   break;
  }

 }

err: sverrno = errno;
 if (op != 129)
  while ((parent = BT_POP(t)) != ((void*)0)) {
   if ((h = mpool_get(t->bt_mp, parent->pgno, 0)) == ((void*)0))
    break;
   if (op == 128)
    --GETRINTERNAL(h, parent->index)->nrecs;
   else
    ++GETRINTERNAL(h, parent->index)->nrecs;
   mpool_put(t->bt_mp, h, MPOOL_DIRTY);
  }
 errno = sverrno;
 return (((void*)0));
}
