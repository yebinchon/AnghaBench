
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ pgno_t ;
struct TYPE_16__ {int bt_mp; } ;
struct TYPE_15__ {scalar_t__ index; TYPE_1__* page; } ;
struct TYPE_14__ {scalar_t__ pgno; scalar_t__ prevpg; scalar_t__ nextpg; } ;
typedef TYPE_1__ PAGE ;
typedef TYPE_2__ EPG ;
typedef int DBT ;
typedef TYPE_3__ BTREE ;


 int B_NODUPS ;
 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 scalar_t__ NEXTINDEX (TYPE_1__*) ;
 scalar_t__ P_INVALID ;
 int RET_ERROR ;
 int RET_SPECIAL ;
 int RET_SUCCESS ;
 scalar_t__ __bt_cmp (TYPE_3__*,int const*,TYPE_2__*) ;
 TYPE_2__* __bt_search (TYPE_3__*,int const*,int*) ;
 TYPE_1__* mpool_get (int ,scalar_t__,int ) ;
 int mpool_put (int ,TYPE_1__*,int ) ;

__attribute__((used)) static int
__bt_first(BTREE *t, const DBT *key, EPG *erval, int *exactp)
{
 PAGE *h;
 EPG *ep, save;
 pgno_t pg;
 if ((ep = __bt_search(t, key, exactp)) == ((void*)0))
  return (0);
 if (*exactp) {
  if (F_ISSET(t, B_NODUPS)) {
   *erval = *ep;
   return (RET_SUCCESS);
  }






  save = *ep;
  h = ep->page;
  do {
   if (save.page->pgno != ep->page->pgno) {
    mpool_put(t->bt_mp, save.page, 0);
    save = *ep;
   } else
    save.index = ep->index;






   if (ep->index == 0) {
    if (h->prevpg == P_INVALID)
     break;
    if (h->pgno != save.page->pgno)
     mpool_put(t->bt_mp, h, 0);
    if ((h = mpool_get(t->bt_mp,
        h->prevpg, 0)) == ((void*)0)) {
     if (h->pgno == save.page->pgno)
      mpool_put(t->bt_mp,
          save.page, 0);
     return (RET_ERROR);
    }
    ep->page = h;
    ep->index = NEXTINDEX(h);
   }
   --ep->index;
  } while (__bt_cmp(t, key, ep) == 0);






  if (h->pgno != save.page->pgno)
   mpool_put(t->bt_mp, h, 0);

  *erval = save;
  return (RET_SUCCESS);
 }


 if (ep->index == NEXTINDEX(ep->page)) {
  h = ep->page;
  pg = h->nextpg;
  mpool_put(t->bt_mp, h, 0);
  if (pg == P_INVALID)
   return (RET_SPECIAL);
  if ((h = mpool_get(t->bt_mp, pg, 0)) == ((void*)0))
   return (RET_ERROR);
  ep->index = 0;
  ep->page = h;
 }
 *erval = *ep;
 return (RET_SUCCESS);
}
