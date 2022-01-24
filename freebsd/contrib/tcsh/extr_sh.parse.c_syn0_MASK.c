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
struct command {int t_dflg; int /*<<< orphan*/  t_dcdr; struct command* t_dcar; int /*<<< orphan*/  t_dtyp; struct command* t_dspr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_TOOMANYLP ; 
 int /*<<< orphan*/  ERR_TOOMANYRP ; 
 int F_AMPERSAND ; 
 int F_NOINTERRUPT ; 
 int /*<<< orphan*/  NODE_AND ; 
 int /*<<< orphan*/  NODE_LIST ; 
 int /*<<< orphan*/  NODE_OR ; 
 int /*<<< orphan*/  NODE_PAREN ; 
 int /*<<< orphan*/  STRand ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct command* FUNC2 (struct wordent const*,struct wordent const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wordent const*,struct wordent const*,int) ; 
 struct command* FUNC4 (int,int) ; 

__attribute__((used)) static struct command *
FUNC5(const struct wordent *p1, const struct wordent *p2, int flags)
{
    const struct wordent *p;
    struct command *t, *t1;
    int     l;

    l = 0;
    for (p = p1; p != p2; p = p->next)
	switch (p->word[0]) {

	case '(':
	    l++;
	    continue;

	case ')':
	    l--;
	    if (l < 0)
		FUNC1(ERR_TOOMANYRP);
	    continue;

	case '|':
	    if (p->word[1] == '|')
		continue;
	    /*FALLTHROUGH*/

	case '>':
	    if (p->next != p2 && FUNC0(p->next->word, STRand))
		p = p->next;
	    continue;

	case '&':
	    if (l != 0)
		break;
	    if (p->word[1] == '&')
		continue;
	    t1 = FUNC2(p1, p, flags);
	    if (t1->t_dtyp == NODE_LIST ||
		t1->t_dtyp == NODE_AND ||
		t1->t_dtyp == NODE_OR) {
		t = FUNC4(1, sizeof(*t));
		t->t_dtyp = NODE_PAREN;
		t->t_dflg = F_AMPERSAND | F_NOINTERRUPT;
		t->t_dspr = t1;
		t1 = t;
	    }
	    else
		t1->t_dflg |= F_AMPERSAND | F_NOINTERRUPT;
	    t = FUNC4(1, sizeof(*t));
	    t->t_dtyp = NODE_LIST;
	    t->t_dflg = 0;
	    t->t_dcar = t1;
	    t->t_dcdr = FUNC3(p, p2, flags);
	    return (t);
	default:
	    break;
	}
    if (l == 0)
	return (FUNC2(p1, p2, flags));
    FUNC1(ERR_TOOMANYLP);
    return (0);
}