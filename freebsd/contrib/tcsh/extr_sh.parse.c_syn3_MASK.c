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
typedef  struct wordent {int* word; struct wordent const* next; } const wordent ;
struct command {int t_dflg; int /*<<< orphan*/  t_dtyp; int /*<<< orphan*/  t_dspr; void* t_dlef; void* t_drit; int /*<<< orphan*/ ** t_dcom; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_BADPLP ; 
 int /*<<< orphan*/  ERR_BADPLPS ; 
 int /*<<< orphan*/  ERR_INRED ; 
 int /*<<< orphan*/  ERR_MISRED ; 
 int /*<<< orphan*/  ERR_NULLCOM ; 
 int /*<<< orphan*/  ERR_OUTRED ; 
 int /*<<< orphan*/  ERR_REDPAR ; 
 int F_APPEND ; 
 int F_NOFORK ; 
 int F_OVERWRITE ; 
 int F_READ ; 
 int F_STDERR ; 
 int /*<<< orphan*/  NODE_COMMAND ; 
 int /*<<< orphan*/  NODE_PAREN ; 
 int P_DIAG ; 
 int P_HERE ; 
 int P_IN ; 
 int P_OUT ; 
 int /*<<< orphan*/  RELPAR ; 
 int /*<<< orphan*/  STRand ; 
 int /*<<< orphan*/  STRbang ; 
 void* FUNC0 (char*) ; 
#define  TC_ELSE 135 
#define  TC_EXIT 134 
#define  TC_FOREACH 133 
#define  TC_IF 132 
#define  TC_LET 131 
#define  TC_SET 130 
#define  TC_SWITCH 129 
#define  TC_WHILE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  seterr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (struct wordent const*,struct wordent const*,int) ; 
 void* FUNC6 (int,int) ; 

__attribute__((used)) static struct command *
FUNC7(const struct wordent *p1, const struct wordent *p2, int flags)
{
    const struct wordent *p;
    const struct wordent *lp, *rp;
    struct command *t;
    int l;
    Char  **av;
    int     n, c;
    int    specp = 0;

    if (p1 != p2) {
	p = p1;
again:
	switch (FUNC4(p->word)) {

	case TC_ELSE:
	    p = p->next;
	    if (p != p2)
		goto again;
	    break;

	case TC_EXIT:
	case TC_FOREACH:
	case TC_IF:
	case TC_LET:
	case TC_SET:
	case TC_SWITCH:
	case TC_WHILE:
	    specp = 1;
	    break;
	default:
	    break;
	}
    }
    n = 0;
    l = 0;
    for (p = p1; p != p2; p = p->next)
	switch (p->word[0]) {

	case '(':
	    if (specp)
		n++;
	    l++;
	    continue;

	case ')':
	    if (specp)
		n++;
	    l--;
	    continue;

	case '>':
	case '<':
	    if (l != 0) {
		if (specp)
		    n++;
		continue;
	    }
	    if (p->next == p2)
		continue;
	    if (FUNC1(RELPAR, p->next->word[0]))
		continue;
	    n--;
	    continue;

	default:
	    if (!specp && l != 0)
		continue;
	    n++;
	    continue;
	}
    if (n < 0)
	n = 0;
    t = FUNC6(1, sizeof(*t));
    av = FUNC6(n + 1, sizeof(Char **));
    t->t_dcom = av;
    n = 0;
    if (p2->word[0] == ')')
	t->t_dflg = F_NOFORK;
    lp = 0;
    rp = 0;
    l = 0;
    for (p = p1; p != p2; p = p->next) {
	c = p->word[0];
	switch (c) {

	case '(':
	    if (l == 0) {
		if (lp != 0 && !specp)
		    FUNC3(ERR_BADPLP);
		lp = p->next;
	    }
	    l++;
	    goto savep;

	case ')':
	    l--;
	    if (l == 0)
		rp = p;
	    goto savep;

	case '>':
	    if (l != 0)
		goto savep;
	    if (p->word[1] == '>')
		t->t_dflg |= F_APPEND;
	    if (p->next != p2 && FUNC2(p->next->word, STRand)) {
		t->t_dflg |= F_STDERR, p = p->next;
		if (flags & (P_OUT | P_DIAG)) {
		    FUNC3(ERR_OUTRED);
		    continue;
		}
	    }
	    if (p->next != p2 && FUNC2(p->next->word, STRbang))
		t->t_dflg |= F_OVERWRITE, p = p->next;
	    if (p->next == p2) {
		FUNC3(ERR_MISRED);
		continue;
	    }
	    p = p->next;
	    if (FUNC1(RELPAR, p->word[0])) {
		FUNC3(ERR_MISRED);
		continue;
	    }
	    if (((flags & P_OUT) && (flags & P_DIAG) == 0) || t->t_drit)
		FUNC3(ERR_OUTRED);
	    else
		t->t_drit = FUNC0(p->word);
	    continue;

	case '<':
	    if (l != 0)
		goto savep;
	    if (p->word[1] == '<')
		t->t_dflg |= F_READ;
	    if (p->next == p2) {
		FUNC3(ERR_MISRED);
		continue;
	    }
	    p = p->next;
	    if (FUNC1(RELPAR, p->word[0])) {
		FUNC3(ERR_MISRED);
		continue;
	    }
	    if ((flags & P_HERE) && (t->t_dflg & F_READ))
		FUNC3(ERR_REDPAR);
	    else if ((flags & P_IN) || t->t_dlef)
		FUNC3(ERR_INRED);
	    else
		t->t_dlef = FUNC0(p->word);
	    continue;

    savep:
	    if (!specp)
		continue;
	default:
	    if (l != 0 && !specp)
		continue;
	    if (seterr == 0)
		av[n] = FUNC0(p->word);
	    n++;
	    continue;
	}
    }
    if (lp != 0 && !specp) {
	if (n != 0)
	    FUNC3(ERR_BADPLPS);
	t->t_dtyp = NODE_PAREN;
	t->t_dspr = FUNC5(lp, rp, P_HERE);
    }
    else {
	if (n == 0)
	    FUNC3(ERR_NULLCOM);
	t->t_dtyp = NODE_COMMAND;
    }
    return (t);
}