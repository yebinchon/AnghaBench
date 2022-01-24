#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wordent {TYPE_2__* prev; TYPE_1__* next; } ;
struct Hist {scalar_t__ Htime; int Hnum; int Href; struct wordent Hlex; struct Hist* Hnext; scalar_t__ Hhash; int /*<<< orphan*/ * histline; struct Hist* Hprev; } ;
struct TYPE_6__ {int /*<<< orphan*/  s; } ;
struct TYPE_5__ {struct wordent* next; } ;
struct TYPE_4__ {struct wordent* prev; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 struct Hist Histlist ; 
 scalar_t__ Htime ; 
 int /*<<< orphan*/  const* STRNULL ; 
 int /*<<< orphan*/  STRall ; 
 int /*<<< orphan*/  STRerase ; 
 int /*<<< orphan*/  STRhistdup ; 
 int /*<<< orphan*/  STRprev ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct Hist*,struct Hist*) ; 
 int /*<<< orphan*/  FUNC3 (struct wordent*,struct wordent*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eventno ; 
 int /*<<< orphan*/  fastMergeErase ; 
 struct Hist* FUNC7 (struct wordent*,unsigned int) ; 
 unsigned int FUNC8 (struct wordent*) ; 
 scalar_t__ FUNC9 (struct wordent*,struct wordent*) ; 
 int /*<<< orphan*/  FUNC10 (struct Hist*) ; 
 int /*<<< orphan*/  FUNC11 (struct Hist*,struct Hist*) ; 
 TYPE_3__ histline ; 
 scalar_t__ histvalid ; 
 int /*<<< orphan*/  FUNC12 (struct Hist*) ; 
 int /*<<< orphan*/  FUNC13 (struct Hist*,unsigned int) ; 
 struct Hist* FUNC14 (struct Hist*,struct Hist*) ; 
 int /*<<< orphan*/  FUNC15 (struct Hist*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ) ; 
 struct Hist* FUNC18 (int) ; 

struct Hist *
FUNC19(
  int event,				/* newly incremented global eventno */
  struct wordent *lp,
  int docopy,
  int mflg,				/* true if merge requested */
  int hlen)				/* -1 if unknown */
{
    struct Hist *p = NULL, *pp = &Histlist, *pTime = NULL;
    struct Hist *np;
    const Char *dp;
    unsigned lpHash = 0;                /* non-zero if hashing entries */

    if ((dp = FUNC17(STRhistdup)) != STRNULL) {
	if (FUNC6(dp, STRerase)) {
	    /* masaoki@akebono.tky.hp.com (Kobayashi Masaoki) */
            FUNC4(hlen);
            lpHash = FUNC8(lp);
            FUNC1(lpHash != 0);
            p = FUNC7(lp, lpHash);
            if (p) {
		if (Htime != 0 && p->Htime > Htime)
		    Htime = p->Htime;
                /* If we are merging, and the old entry is at the place we want
                 * to insert the new entry, then remember the place. */
                if (mflg && Htime != 0 && p->Hprev->Htime >= Htime)
                    pTime = p->Hprev;
		if (!fastMergeErase)
		    FUNC15(p);	/* Reset Href of subsequent entries */
                FUNC12(p);
		FUNC10(p);
                p = NULL;               /* so new entry is allocated below */
	    }
	}
	else if (FUNC6(dp, STRall)) {
            FUNC4(hlen);
            lpHash = FUNC8(lp);
            FUNC1(lpHash != 0);
            p = FUNC7(lp, lpHash);
	    if (p)   /* p!=NULL, only update this entry's Htime below */
		eventno--;		/* not adding a new event */
	}
	else if (FUNC6(dp, STRprev)) {
	    if (pp->Hnext && FUNC9(lp, &(pp->Hnext->Hlex))) {
		p = pp->Hnext;
		eventno--;
	    }
	}
    }

    np = p ? p : FUNC18(sizeof(*np));

    /* Pick up timestamp set by lex() in Htime if reading saved history */
    if (Htime != 0) {
	np->Htime = Htime;
	Htime = 0;
    }
    else
        (void) FUNC16(&(np->Htime));

    if (p == np)
        return np;                      /* reused existing entry */

    /* Initialize the new entry. */
    np->Hnum = np->Href = event;
    if (docopy) {
        FUNC3(&np->Hlex, lp);
	if (histvalid)
	    np->histline = FUNC0(histline.s);
	else
	    np->histline = NULL;
    }
    else {
	np->Hlex.next = lp->next;
	lp->next->prev = &np->Hlex;
	np->Hlex.prev = lp->prev;
        lp->prev->next = &np->Hlex;
        np->histline = NULL;
    }
    np->Hhash = 0;

    /* The head of history list is the default insertion point.
       If merging, advance insertion point, in pp, according to Htime. */
    /* XXX -- In histdup=all, Htime values can be non-monotonic. */
    if (mflg) {                         /* merge according to np->Htime */
        pp = FUNC14(np, pTime);
        for (p = pp->Hnext; p && p->Htime == np->Htime; pp = p, p = p->Hnext) {
            if (FUNC9(&p->Hlex, &np->Hlex)) {
                eventno--;              /* duplicate, so don't add new event */
                FUNC10(np);
                return (p);
              }
          }
        /* pp is now the last entry with time >= to np. */
	if (!fastMergeErase) {		/* renumber at end of loadhist */
	    /* Before inserting np after pp, bubble its Hnum & Href values down
	     * through the earlier part of list. */
	    FUNC2(np, pp);
	}
    }
    else
        pp = &Histlist;                 /* insert at beginning of history */
    FUNC11(np, pp);
    if (lpHash && hlen != 0)		/* erase & all modes use hash table */
        FUNC13(np, lpHash);
    else
        FUNC5();
    return (np);
}