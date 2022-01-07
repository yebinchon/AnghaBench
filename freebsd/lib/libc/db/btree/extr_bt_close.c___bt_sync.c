
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_8__ {int bt_mp; int * bt_pinned; } ;
struct TYPE_7__ {TYPE_2__* internal; } ;
typedef TYPE_1__ DB ;
typedef TYPE_2__ BTREE ;


 int B_INMEM ;
 int B_METADIRTY ;
 int B_MODIFIED ;
 int B_RDONLY ;
 int EINVAL ;
 int F_CLR (TYPE_2__*,int) ;
 scalar_t__ F_ISSET (TYPE_2__*,int) ;
 int RET_ERROR ;
 int RET_SUCCESS ;
 int bt_meta (TYPE_2__*) ;
 int errno ;
 int mpool_put (int ,int *,int ) ;
 int mpool_sync (int ) ;

int
__bt_sync(const DB *dbp, u_int flags)
{
 BTREE *t;
 int status;

 t = dbp->internal;


 if (t->bt_pinned != ((void*)0)) {
  mpool_put(t->bt_mp, t->bt_pinned, 0);
  t->bt_pinned = ((void*)0);
 }


 if (flags != 0) {
  errno = EINVAL;
  return (RET_ERROR);
 }

 if (F_ISSET(t, B_INMEM | B_RDONLY) ||
     !F_ISSET(t, B_MODIFIED | B_METADIRTY))
  return (RET_SUCCESS);

 if (F_ISSET(t, B_METADIRTY) && bt_meta(t) == RET_ERROR)
  return (RET_ERROR);

 if ((status = mpool_sync(t->bt_mp)) == RET_SUCCESS)
  F_CLR(t, B_MODIFIED);

 return (status);
}
