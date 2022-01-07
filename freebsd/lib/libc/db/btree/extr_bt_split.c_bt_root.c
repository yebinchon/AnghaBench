
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef void* pgno_t ;
typedef int indx_t ;
struct TYPE_16__ {int bt_psize; } ;
struct TYPE_15__ {int flags; int upper; int lower; void* nextpg; void* prevpg; void* pgno; } ;
typedef TYPE_1__ PAGE ;
typedef TYPE_2__ BTREE ;


 int BTDATAOFF ;
 void* P_INVALID ;
 int P_TYPE ;
 TYPE_1__* __bt_new (TYPE_2__*,void**) ;
 TYPE_1__* bt_psplit (TYPE_2__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int *,size_t) ;
 int bt_rootsplit ;
 int bt_split ;

__attribute__((used)) static PAGE *
bt_root(BTREE *t, PAGE *h, PAGE **lp, PAGE **rp, indx_t *skip, size_t ilen)
{
 PAGE *l, *r, *tp;
 pgno_t lnpg, rnpg;






 if ((l = __bt_new(t, &lnpg)) == ((void*)0) ||
     (r = __bt_new(t, &rnpg)) == ((void*)0))
  return (((void*)0));
 l->pgno = lnpg;
 r->pgno = rnpg;
 l->nextpg = r->pgno;
 r->prevpg = l->pgno;
 l->prevpg = r->nextpg = P_INVALID;
 l->lower = r->lower = BTDATAOFF;
 l->upper = r->upper = t->bt_psize;
 l->flags = r->flags = h->flags & P_TYPE;


 tp = bt_psplit(t, h, l, r, skip, ilen);

 *lp = l;
 *rp = r;
 return (tp);
}
