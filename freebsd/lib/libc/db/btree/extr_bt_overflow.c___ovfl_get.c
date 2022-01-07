
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u_int32_t ;
typedef scalar_t__ pgno_t ;
struct TYPE_7__ {int bt_psize; int bt_mp; } ;
struct TYPE_6__ {scalar_t__ nextpg; } ;
typedef TYPE_1__ PAGE ;
typedef TYPE_2__ BTREE ;


 int BTDATAOFF ;
 size_t MIN (size_t,size_t) ;
 scalar_t__ P_INVALID ;
 int RET_ERROR ;
 int RET_SUCCESS ;
 int abort () ;
 int memmove (void*,char*,size_t) ;
 TYPE_1__* mpool_get (int ,scalar_t__,int ) ;
 int mpool_put (int ,TYPE_1__*,int ) ;
 void* reallocf (void*,size_t) ;

int
__ovfl_get(BTREE *t, void *p, size_t *ssz, void **buf, size_t *bufsz)
{
 PAGE *h;
 pgno_t pg;
 size_t nb, plen;
 u_int32_t sz;

 memmove(&pg, p, sizeof(pgno_t));
 memmove(&sz, (char *)p + sizeof(pgno_t), sizeof(u_int32_t));
 *ssz = sz;






 if (*bufsz < sz) {
  *buf = reallocf(*buf, sz);
  if (*buf == ((void*)0))
   return (RET_ERROR);
  *bufsz = sz;
 }





 plen = t->bt_psize - BTDATAOFF;
 for (p = *buf;; p = (char *)p + nb, pg = h->nextpg) {
  if ((h = mpool_get(t->bt_mp, pg, 0)) == ((void*)0))
   return (RET_ERROR);

  nb = MIN(sz, plen);
  memmove(p, (char *)h + BTDATAOFF, nb);
  mpool_put(t->bt_mp, h, 0);

  if ((sz -= nb) == 0)
   break;
 }
 return (RET_SUCCESS);
}
