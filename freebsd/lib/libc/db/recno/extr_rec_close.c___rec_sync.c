
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct iovec {int iov_len; int * iov_base; } ;
typedef scalar_t__ ssize_t ;
typedef int recno_t ;
typedef int off_t ;
struct TYPE_22__ {int rcursor; } ;
struct TYPE_25__ {int (* bt_irec ) (TYPE_4__*,int ) ;int bt_rfd; TYPE_1__ bt_cursor; int bt_bval; int * bt_pinned; int bt_mp; } ;
struct TYPE_24__ {int (* seq ) (TYPE_3__ const*,TYPE_2__*,TYPE_2__*,int ) ;TYPE_4__* internal; } ;
struct TYPE_23__ {int size; int * data; } ;
typedef TYPE_2__ DBT ;
typedef TYPE_3__ DB ;
typedef TYPE_4__ BTREE ;


 int F_CLR (TYPE_4__*,int) ;
 scalar_t__ F_ISSET (TYPE_4__*,int) ;
 int MAX_REC_NUMBER ;
 int RET_ERROR ;
 int RET_SUCCESS ;
 int R_EOF ;
 int R_FIRST ;
 int R_FIXLEN ;
 int R_INMEM ;
 int R_MODIFIED ;
 int R_NEXT ;
 int R_RDONLY ;
 scalar_t__ R_RECNOSYNC ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int __bt_sync (TYPE_3__ const*,int ) ;
 scalar_t__ _write (int ,int *,int) ;
 scalar_t__ _writev (int ,struct iovec*,int) ;
 scalar_t__ ftruncate (int ,int) ;
 scalar_t__ lseek (int ,int,int ) ;
 int mpool_put (int ,int *,int ) ;
 int stub1 (TYPE_4__*,int ) ;
 int stub2 (TYPE_3__ const*,TYPE_2__*,TYPE_2__*,int ) ;
 int stub3 (TYPE_3__ const*,TYPE_2__*,TYPE_2__*,int ) ;
 int stub4 (TYPE_3__ const*,TYPE_2__*,TYPE_2__*,int ) ;
 int stub5 (TYPE_3__ const*,TYPE_2__*,TYPE_2__*,int ) ;

int
__rec_sync(const DB *dbp, u_int flags)
{
 struct iovec iov[2];
 BTREE *t;
 DBT data, key;
 off_t off;
 recno_t scursor, trec;
 int status;

 t = dbp->internal;


 if (t->bt_pinned != ((void*)0)) {
  mpool_put(t->bt_mp, t->bt_pinned, 0);
  t->bt_pinned = ((void*)0);
 }

 if (flags == R_RECNOSYNC)
  return (__bt_sync(dbp, 0));

 if (F_ISSET(t, R_RDONLY | R_INMEM) || !F_ISSET(t, R_MODIFIED))
  return (RET_SUCCESS);


 if (!F_ISSET(t, R_EOF) && t->bt_irec(t, MAX_REC_NUMBER) == RET_ERROR)
  return (RET_ERROR);


 if (lseek(t->bt_rfd, (off_t)0, SEEK_SET) != 0)
  return (RET_ERROR);


 scursor = t->bt_cursor.rcursor;

 key.size = sizeof(recno_t);
 key.data = &trec;

 if (F_ISSET(t, R_FIXLEN)) {





  status = (dbp->seq)(dbp, &key, &data, R_FIRST);
  while (status == RET_SUCCESS) {
   if (_write(t->bt_rfd, data.data, data.size) !=
       (ssize_t)data.size)
    return (RET_ERROR);
   status = (dbp->seq)(dbp, &key, &data, R_NEXT);
  }
 } else {
  iov[1].iov_base = &t->bt_bval;
  iov[1].iov_len = 1;

  status = (dbp->seq)(dbp, &key, &data, R_FIRST);
  while (status == RET_SUCCESS) {
   iov[0].iov_base = data.data;
   iov[0].iov_len = data.size;
   if (_writev(t->bt_rfd, iov, 2) != (ssize_t)(data.size + 1))
    return (RET_ERROR);
   status = (dbp->seq)(dbp, &key, &data, R_NEXT);
  }
 }


 t->bt_cursor.rcursor = scursor;

 if (status == RET_ERROR)
  return (RET_ERROR);
 if ((off = lseek(t->bt_rfd, (off_t)0, SEEK_CUR)) == -1)
  return (RET_ERROR);
 if (ftruncate(t->bt_rfd, off))
  return (RET_ERROR);
 F_CLR(t, R_MODIFIED);
 return (RET_SUCCESS);
}
