
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef scalar_t__ recno_t ;
struct TYPE_18__ {scalar_t__ bt_nrecs; int (* bt_irec ) (TYPE_4__*,scalar_t__) ;int * bt_pinned; int bt_mp; } ;
struct TYPE_17__ {TYPE_4__* internal; } ;
struct TYPE_16__ {scalar_t__ data; } ;
struct TYPE_15__ {int * page; } ;
typedef TYPE_1__ EPG ;
typedef TYPE_2__ DBT ;
typedef TYPE_3__ DB ;
typedef TYPE_4__ BTREE ;


 int B_DB_LOCK ;
 int EINVAL ;
 scalar_t__ F_ISSET (TYPE_4__*,int) ;
 int RET_ERROR ;
 int RET_SPECIAL ;
 int RET_SUCCESS ;
 int R_EOF ;
 int R_INMEM ;
 int SEARCH ;
 int __rec_ret (TYPE_4__*,TYPE_1__*,int ,int *,TYPE_2__*) ;
 TYPE_1__* __rec_search (TYPE_4__*,scalar_t__,int ) ;
 int errno ;
 int mpool_put (int ,int *,int ) ;
 int stub1 (TYPE_4__*,scalar_t__) ;

int
__rec_get(const DB *dbp, const DBT *key, DBT *data, u_int flags)
{
 BTREE *t;
 EPG *e;
 recno_t nrec;
 int status;

 t = dbp->internal;


 if (t->bt_pinned != ((void*)0)) {
  mpool_put(t->bt_mp, t->bt_pinned, 0);
  t->bt_pinned = ((void*)0);
 }


 if (flags || (nrec = *(recno_t *)key->data) == 0) {
  errno = EINVAL;
  return (RET_ERROR);
 }





 if (nrec > t->bt_nrecs) {
  if (F_ISSET(t, R_EOF | R_INMEM))
   return (RET_SPECIAL);
  if ((status = t->bt_irec(t, nrec)) != RET_SUCCESS)
   return (status);
 }

 --nrec;
 if ((e = __rec_search(t, nrec, SEARCH)) == ((void*)0))
  return (RET_ERROR);

 status = __rec_ret(t, e, 0, ((void*)0), data);
 if (F_ISSET(t, B_DB_LOCK))
  mpool_put(t->bt_mp, e->page, 0);
 else
  t->bt_pinned = e->page;
 return (status);
}
