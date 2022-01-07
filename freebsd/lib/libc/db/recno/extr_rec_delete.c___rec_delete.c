
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_int ;
typedef int recno_t ;
struct TYPE_12__ {int rcursor; } ;
struct TYPE_11__ {TYPE_8__ bt_cursor; int bt_nrecs; int * bt_pinned; int bt_mp; } ;
struct TYPE_10__ {TYPE_3__* internal; } ;
struct TYPE_9__ {scalar_t__ data; } ;
typedef TYPE_1__ DBT ;
typedef TYPE_2__ DB ;
typedef TYPE_3__ BTREE ;


 int B_MODIFIED ;
 int CURS_INIT ;
 int EINVAL ;
 int F_ISSET (TYPE_8__*,int ) ;
 int F_SET (TYPE_3__*,int) ;
 int RET_ERROR ;
 int RET_SPECIAL ;
 int RET_SUCCESS ;

 int R_MODIFIED ;
 int errno ;
 int mpool_put (int ,int *,int ) ;
 int rec_rdelete (TYPE_3__*,int ) ;

int
__rec_delete(const DB *dbp, const DBT *key, u_int flags)
{
 BTREE *t;
 recno_t nrec;
 int status;

 t = dbp->internal;


 if (t->bt_pinned != ((void*)0)) {
  mpool_put(t->bt_mp, t->bt_pinned, 0);
  t->bt_pinned = ((void*)0);
 }

 switch(flags) {
 case 0:
  if ((nrec = *(recno_t *)key->data) == 0)
   goto einval;
  if (nrec > t->bt_nrecs)
   return (RET_SPECIAL);
  --nrec;
  status = rec_rdelete(t, nrec);
  break;
 case 128:
  if (!F_ISSET(&t->bt_cursor, CURS_INIT))
   goto einval;
  if (t->bt_nrecs == 0)
   return (RET_SPECIAL);
  status = rec_rdelete(t, t->bt_cursor.rcursor - 1);
  if (status == RET_SUCCESS)
   --t->bt_cursor.rcursor;
  break;
 default:
einval: errno = EINVAL;
  return (RET_ERROR);
 }

 if (status == RET_SUCCESS)
  F_SET(t, B_MODIFIED | R_MODIFIED);
 return (status);
}
