
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_12__ {int * bt_pinned; int bt_mp; int bt_rdata; } ;
struct TYPE_11__ {TYPE_3__* internal; } ;
struct TYPE_10__ {int * page; } ;
typedef TYPE_1__ EPG ;
typedef int DBT ;
typedef TYPE_2__ DB ;
typedef TYPE_3__ BTREE ;


 int B_DB_LOCK ;
 int EINVAL ;
 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 int RET_ERROR ;
 int RET_SPECIAL ;
 int __bt_ret (TYPE_3__*,TYPE_1__*,int *,int *,int *,int *,int ) ;
 TYPE_1__* __bt_search (TYPE_3__*,int const*,int*) ;
 int errno ;
 int mpool_put (int ,int *,int ) ;

int
__bt_get(const DB *dbp, const DBT *key, DBT *data, u_int flags)
{
 BTREE *t;
 EPG *e;
 int exact, status;

 t = dbp->internal;


 if (t->bt_pinned != ((void*)0)) {
  mpool_put(t->bt_mp, t->bt_pinned, 0);
  t->bt_pinned = ((void*)0);
 }


 if (flags) {
  errno = EINVAL;
  return (RET_ERROR);
 }

 if ((e = __bt_search(t, key, &exact)) == ((void*)0))
  return (RET_ERROR);
 if (!exact) {
  mpool_put(t->bt_mp, e->page, 0);
  return (RET_SPECIAL);
 }

 status = __bt_ret(t, e, ((void*)0), ((void*)0), data, &t->bt_rdata, 0);





 if (F_ISSET(t, B_DB_LOCK))
  mpool_put(t->bt_mp, e->page, 0);
 else
  t->bt_pinned = e->page;
 return (status);
}
