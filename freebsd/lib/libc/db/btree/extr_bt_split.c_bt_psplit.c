
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int indx_t ;
struct TYPE_26__ {int flags; int ksize; } ;
struct TYPE_25__ {int flags; } ;
struct TYPE_21__ {scalar_t__ pgno; int index; } ;
struct TYPE_23__ {TYPE_1__ pg; } ;
struct TYPE_24__ {int bt_psize; TYPE_3__ bt_cursor; } ;
struct TYPE_22__ {int flags; int* linp; int upper; int lower; scalar_t__ pgno; } ;
typedef int RLEAF ;
typedef TYPE_2__ PAGE ;
typedef TYPE_3__ CURSOR ;
typedef TYPE_4__ BTREE ;
typedef TYPE_5__ BLEAF ;
typedef TYPE_6__ BINTERNAL ;


 int BTDATAOFF ;
 int CURS_INIT ;
 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 TYPE_6__* GETBINTERNAL (TYPE_2__*,int) ;
 TYPE_5__* GETBLEAF (TYPE_2__*,int) ;
 void* GETRINTERNAL (TYPE_2__*,int) ;
 int * GETRLEAF (TYPE_2__*,int) ;
 int MAX_PAGE_OFFSET ;
 int NBINTERNAL (int ) ;
 int NBLEAF (TYPE_5__*) ;
 int NEXTINDEX (TYPE_2__*) ;
 int NRINTERNAL ;
 int NRLEAF (int *) ;
 int P_BIGKEY ;




 int P_TYPE ;
 int abort () ;
 int memmove (char*,void*,int) ;

__attribute__((used)) static PAGE *
bt_psplit(BTREE *t, PAGE *h, PAGE *l, PAGE *r, indx_t *pskip, size_t ilen)
{
 BINTERNAL *bi;
 BLEAF *bl;
 CURSOR *c;
 RLEAF *rl;
 PAGE *rval;
 void *src;
 indx_t full, half, nxt, off, skip, top, used;
 u_int32_t nbytes;
 int bigkeycnt, isbigkey;







 bigkeycnt = 0;
 skip = *pskip;
 full = t->bt_psize - BTDATAOFF;
 half = full / 2;
 used = 0;
 for (nxt = off = 0, top = NEXTINDEX(h); nxt < top; ++off) {
  if (skip == off) {
   nbytes = ilen;
   isbigkey = 0;
  } else
   switch (h->flags & P_TYPE) {
   case 131:
    src = bi = GETBINTERNAL(h, nxt);
    nbytes = NBINTERNAL(bi->ksize);
    isbigkey = bi->flags & P_BIGKEY;
    break;
   case 130:
    src = bl = GETBLEAF(h, nxt);
    nbytes = NBLEAF(bl);
    isbigkey = bl->flags & P_BIGKEY;
    break;
   case 129:
    src = GETRINTERNAL(h, nxt);
    nbytes = NRINTERNAL;
    isbigkey = 0;
    break;
   case 128:
    src = rl = GETRLEAF(h, nxt);
    nbytes = NRLEAF(rl);
    isbigkey = 0;
    break;
   default:
    abort();
   }







  if ((skip <= off && used + nbytes + sizeof(indx_t) >= full) ||
      nxt == top - 1) {
   --off;
   break;
  }


  if (skip != off) {
   ++nxt;

   l->linp[off] = l->upper -= nbytes;
   memmove((char *)l + l->upper, src, nbytes);
  }

  used += nbytes + sizeof(indx_t);
  if (used >= half) {
   if (!isbigkey || bigkeycnt == 3)
    break;
   else
    ++bigkeycnt;
  }
 }





 l->lower += (off + 1) * sizeof(indx_t);
 c = &t->bt_cursor;
 if (F_ISSET(c, CURS_INIT) && c->pg.pgno == h->pgno) {
  if (c->pg.index >= skip)
   ++c->pg.index;
  if (c->pg.index < nxt)
   c->pg.pgno = l->pgno;
  else {
   c->pg.pgno = r->pgno;
   c->pg.index -= nxt;
  }
 }






 if (skip <= off) {
  skip = MAX_PAGE_OFFSET;
  rval = l;
 } else {
  rval = r;
  *pskip -= nxt;
 }

 for (off = 0; nxt < top; ++off) {
  if (skip == nxt) {
   ++off;
   skip = MAX_PAGE_OFFSET;
  }
  switch (h->flags & P_TYPE) {
  case 131:
   src = bi = GETBINTERNAL(h, nxt);
   nbytes = NBINTERNAL(bi->ksize);
   break;
  case 130:
   src = bl = GETBLEAF(h, nxt);
   nbytes = NBLEAF(bl);
   break;
  case 129:
   src = GETRINTERNAL(h, nxt);
   nbytes = NRINTERNAL;
   break;
  case 128:
   src = rl = GETRLEAF(h, nxt);
   nbytes = NRLEAF(rl);
   break;
  default:
   abort();
  }
  ++nxt;
  r->linp[off] = r->upper -= nbytes;
  memmove((char *)r + r->upper, src, nbytes);
 }
 r->lower += off * sizeof(indx_t);


 if (skip == top)
  r->lower += sizeof(indx_t);

 return (rval);
}
