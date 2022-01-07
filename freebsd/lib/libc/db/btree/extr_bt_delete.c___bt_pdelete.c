
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int u_int32_t ;
typedef size_t indx_t ;
struct TYPE_22__ {int flags; int ksize; int bytes; } ;
struct TYPE_21__ {int bt_psize; int bt_mp; } ;
struct TYPE_20__ {size_t index; int pgno; } ;
struct TYPE_19__ {scalar_t__ pgno; int lower; int upper; size_t* linp; int flags; } ;
typedef TYPE_1__ PAGE ;
typedef TYPE_2__ EPGNO ;
typedef TYPE_3__ BTREE ;
typedef TYPE_4__ BINTERNAL ;


 int BTDATAOFF ;
 TYPE_2__* BT_POP (TYPE_3__*) ;
 TYPE_4__* GETBINTERNAL (TYPE_1__*,size_t) ;
 int MPOOL_DIRTY ;
 int NBINTERNAL (int ) ;
 size_t NEXTINDEX (TYPE_1__*) ;
 int P_BIGKEY ;
 int P_BLEAF ;
 scalar_t__ P_ROOT ;
 int RET_ERROR ;
 int RET_SUCCESS ;
 scalar_t__ __bt_free (TYPE_3__*,TYPE_1__*) ;
 scalar_t__ __bt_relink (TYPE_3__*,TYPE_1__*) ;
 int __ovfl_delete (TYPE_3__*,int ) ;
 int memmove (char*,char*,int) ;
 TYPE_1__* mpool_get (int ,int ,int ) ;
 int mpool_put (int ,TYPE_1__*,int ) ;

__attribute__((used)) static int
__bt_pdelete(BTREE *t, PAGE *h)
{
 BINTERNAL *bi;
 PAGE *pg;
 EPGNO *parent;
 indx_t cnt, idx, *ip, offset;
 u_int32_t nksize;
 char *from;
 while ((parent = BT_POP(t)) != ((void*)0)) {

  if ((pg = mpool_get(t->bt_mp, parent->pgno, 0)) == ((void*)0))
   return (RET_ERROR);

  idx = parent->index;
  bi = GETBINTERNAL(pg, idx);


  if (bi->flags & P_BIGKEY &&
      __ovfl_delete(t, bi->bytes) == RET_ERROR) {
   mpool_put(t->bt_mp, pg, 0);
   return (RET_ERROR);
  }






  if (NEXTINDEX(pg) == 1) {
   if (pg->pgno == P_ROOT) {
    pg->lower = BTDATAOFF;
    pg->upper = t->bt_psize;
    pg->flags = P_BLEAF;
   } else {
    if (__bt_relink(t, pg) || __bt_free(t, pg))
     return (RET_ERROR);
    continue;
   }
  } else {

   nksize = NBINTERNAL(bi->ksize);
   from = (char *)pg + pg->upper;
   memmove(from + nksize, from, (char *)bi - from);
   pg->upper += nksize;


   offset = pg->linp[idx];
   for (cnt = idx, ip = &pg->linp[0]; cnt--; ++ip)
    if (ip[0] < offset)
     ip[0] += nksize;
   for (cnt = NEXTINDEX(pg) - idx; --cnt; ++ip)
    ip[0] = ip[1] < offset ? ip[1] + nksize : ip[1];
   pg->lower -= sizeof(indx_t);
  }

  mpool_put(t->bt_mp, pg, MPOOL_DIRTY);
  break;
 }


 if (h->pgno == P_ROOT) {
  mpool_put(t->bt_mp, h, MPOOL_DIRTY);
  return (RET_SUCCESS);
 }
 return (__bt_relink(t, h) || __bt_free(t, h));
}
