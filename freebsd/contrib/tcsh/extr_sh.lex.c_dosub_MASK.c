#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wordent {struct wordent* prev; int /*<<< orphan*/ * word; struct wordent* next; } ;
struct Hist {struct wordent Hlex; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_MODFAIL ; 
 int FLAG_A ; 
 int FLAG_G ; 
 int /*<<< orphan*/  HIST_PURGE ; 
 int /*<<< orphan*/ * STRNULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 struct Hist* FUNC2 (int /*<<< orphan*/ ,struct wordent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int exclc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,size_t*) ; 
 struct wordent* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct wordent *
FUNC7(Char sc, struct wordent *en, int global)
{
    struct wordent lexi;
    int    didsub = 0, didone = 0;
    struct wordent *hp = &lexi;
    struct wordent *wdp;
    int i = exclc;
    struct Hist *hst;

    wdp = hp;
    while (--i >= 0) {
	struct wordent *new = FUNC5(1, sizeof *wdp);

	new->word = 0;
	new->prev = wdp;
	new->next = hp;
	wdp->next = new;
	wdp = new;
	en = en->next;
	if (en->word) {
	    Char *tword, *otword;

	    if ((global & FLAG_G) || didsub == 0) {
		size_t pos;

		pos = 0;
		tword = FUNC4(en->word, sc, &didone, &pos);
		if (didone)
		    didsub = 1;
		if (global & FLAG_A) {
		    while (didone && tword != STRNULL) {
			otword = tword;
			tword = FUNC4(otword, sc, &didone, &pos);
			if (FUNC0(tword, otword) == 0) {
			    FUNC6(otword);
			    break;
			}
			else
			    FUNC6(otword);
		    }
		}
	    }
	    else
		tword = FUNC1(en->word);
	    wdp->word = tword;
	}
    }
    if (didsub == 0)
	FUNC3(ERR_MODFAIL);
    hp->prev = wdp;
    /* 
     * ANSI mode HP/UX compiler chokes on
     * return &enthist(HIST_PURGE, &lexi, 0)->Hlex;
     */
    hst = FUNC2(HIST_PURGE, &lexi, 0, 0, -1);
    return &(hst->Hlex);
}