
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_int32_t ;
typedef scalar_t__ indx_t ;
struct TYPE_13__ {int bt_nrecs; } ;
struct TYPE_12__ {int upper; scalar_t__* linp; int lower; } ;
struct TYPE_11__ {int flags; int bytes; } ;
typedef TYPE_1__ RLEAF ;
typedef TYPE_2__ PAGE ;
typedef TYPE_3__ BTREE ;


 TYPE_1__* GETRLEAF (TYPE_2__*,int) ;
 size_t NEXTINDEX (TYPE_2__*) ;
 int NRLEAF (TYPE_1__*) ;
 int P_BIGDATA ;
 scalar_t__ RET_ERROR ;
 int RET_SUCCESS ;
 scalar_t__ __ovfl_delete (TYPE_3__*,int ) ;
 int memmove (char*,char*,int) ;

int
__rec_dleaf(BTREE *t, PAGE *h, u_int32_t idx)
{
 RLEAF *rl;
 indx_t *ip, cnt, offset;
 u_int32_t nbytes;
 char *from;
 void *to;
 to = rl = GETRLEAF(h, idx);
 if (rl->flags & P_BIGDATA && __ovfl_delete(t, rl->bytes) == RET_ERROR)
  return (RET_ERROR);
 nbytes = NRLEAF(rl);





 from = (char *)h + h->upper;
 memmove(from + nbytes, from, (char *)to - from);
 h->upper += nbytes;

 offset = h->linp[idx];
 for (cnt = &h->linp[idx] - (ip = &h->linp[0]); cnt--; ++ip)
  if (ip[0] < offset)
   ip[0] += nbytes;
 for (cnt = &h->linp[NEXTINDEX(h)] - ip; --cnt; ++ip)
  ip[0] = ip[1] < offset ? ip[1] + nbytes : ip[1];
 h->lower -= sizeof(indx_t);
 --t->bt_nrecs;
 return (RET_SUCCESS);
}
