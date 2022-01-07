
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wordent {TYPE_2__* prev; TYPE_1__* next; } ;
struct Hist {scalar_t__ Htime; int Hnum; int Href; struct wordent Hlex; struct Hist* Hnext; scalar_t__ Hhash; int * histline; struct Hist* Hprev; } ;
struct TYPE_6__ {int s; } ;
struct TYPE_5__ {struct wordent* next; } ;
struct TYPE_4__ {struct wordent* prev; } ;
typedef int Char ;


 struct Hist Histlist ;
 scalar_t__ Htime ;
 int const* STRNULL ;
 int STRall ;
 int STRerase ;
 int STRhistdup ;
 int STRprev ;
 int * Strsave (int ) ;
 int assert (int) ;
 int bubbleHnumHrefDown (struct Hist*,struct Hist*) ;
 int copylex (struct wordent*,struct wordent*) ;
 int createHistHashTable (int) ;
 int discardHistHashTable () ;
 scalar_t__ eq (int const*,int ) ;
 int eventno ;
 int fastMergeErase ;
 struct Hist* findHistHashTable (struct wordent*,unsigned int) ;
 unsigned int hashhist (struct wordent*) ;
 scalar_t__ heq (struct wordent*,struct wordent*) ;
 int hfree (struct Hist*) ;
 int hinsert (struct Hist*,struct Hist*) ;
 TYPE_3__ histline ;
 scalar_t__ histvalid ;
 int hremove (struct Hist*) ;
 int insertHistHashTable (struct Hist*,unsigned int) ;
 struct Hist* mergeInsertionPoint (struct Hist*,struct Hist*) ;
 int renumberHist (struct Hist*) ;
 int time (scalar_t__*) ;
 int * varval (int ) ;
 struct Hist* xmalloc (int) ;

struct Hist *
enthist(
  int event,
  struct wordent *lp,
  int docopy,
  int mflg,
  int hlen)
{
    struct Hist *p = ((void*)0), *pp = &Histlist, *pTime = ((void*)0);
    struct Hist *np;
    const Char *dp;
    unsigned lpHash = 0;

    if ((dp = varval(STRhistdup)) != STRNULL) {
 if (eq(dp, STRerase)) {

            createHistHashTable(hlen);
            lpHash = hashhist(lp);
            assert(lpHash != 0);
            p = findHistHashTable(lp, lpHash);
            if (p) {
  if (Htime != 0 && p->Htime > Htime)
      Htime = p->Htime;


                if (mflg && Htime != 0 && p->Hprev->Htime >= Htime)
                    pTime = p->Hprev;
  if (!fastMergeErase)
      renumberHist(p);
                hremove(p);
  hfree(p);
                p = ((void*)0);
     }
 }
 else if (eq(dp, STRall)) {
            createHistHashTable(hlen);
            lpHash = hashhist(lp);
            assert(lpHash != 0);
            p = findHistHashTable(lp, lpHash);
     if (p)
  eventno--;
 }
 else if (eq(dp, STRprev)) {
     if (pp->Hnext && heq(lp, &(pp->Hnext->Hlex))) {
  p = pp->Hnext;
  eventno--;
     }
 }
    }

    np = p ? p : xmalloc(sizeof(*np));


    if (Htime != 0) {
 np->Htime = Htime;
 Htime = 0;
    }
    else
        (void) time(&(np->Htime));

    if (p == np)
        return np;


    np->Hnum = np->Href = event;
    if (docopy) {
        copylex(&np->Hlex, lp);
 if (histvalid)
     np->histline = Strsave(histline.s);
 else
     np->histline = ((void*)0);
    }
    else {
 np->Hlex.next = lp->next;
 lp->next->prev = &np->Hlex;
 np->Hlex.prev = lp->prev;
        lp->prev->next = &np->Hlex;
        np->histline = ((void*)0);
    }
    np->Hhash = 0;




    if (mflg) {
        pp = mergeInsertionPoint(np, pTime);
        for (p = pp->Hnext; p && p->Htime == np->Htime; pp = p, p = p->Hnext) {
            if (heq(&p->Hlex, &np->Hlex)) {
                eventno--;
                hfree(np);
                return (p);
              }
          }

 if (!fastMergeErase) {


     bubbleHnumHrefDown(np, pp);
 }
    }
    else
        pp = &Histlist;
    hinsert(np, pp);
    if (lpHash && hlen != 0)
        insertHistHashTable(np, lpHash);
    else
        discardHistHashTable();
    return (np);
}
