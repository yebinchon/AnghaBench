
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int bt_rfd; int bt_rfp; int bt_msize; int bt_smap; int * bt_pinned; int bt_mp; } ;
struct TYPE_7__ {TYPE_2__* internal; } ;
typedef TYPE_1__ DB ;
typedef TYPE_2__ BTREE ;


 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int RET_ERROR ;
 int RET_SUCCESS ;
 int R_CLOSEFP ;
 int R_INMEM ;
 int R_MEMMAPPED ;
 int __bt_close (TYPE_1__*) ;
 int __rec_sync (TYPE_1__*,int ) ;
 scalar_t__ _close (int ) ;
 scalar_t__ fclose (int ) ;
 int mpool_put (int ,int *,int ) ;
 scalar_t__ munmap (int ,int ) ;

int
__rec_close(DB *dbp)
{
 BTREE *t;
 int status;

 t = dbp->internal;


 if (t->bt_pinned != ((void*)0)) {
  mpool_put(t->bt_mp, t->bt_pinned, 0);
  t->bt_pinned = ((void*)0);
 }

 if (__rec_sync(dbp, 0) == RET_ERROR)
  return (RET_ERROR);


 status = RET_SUCCESS;
 if (F_ISSET(t, R_MEMMAPPED) && munmap(t->bt_smap, t->bt_msize))
  status = RET_ERROR;

 if (!F_ISSET(t, R_INMEM)) {
  if (F_ISSET(t, R_CLOSEFP)) {
   if (fclose(t->bt_rfp))
    status = RET_ERROR;
  } else {
   if (_close(t->bt_rfd))
    status = RET_ERROR;
  }
 }

 if (__bt_close(dbp) == RET_ERROR)
  status = RET_ERROR;

 return (status);
}
