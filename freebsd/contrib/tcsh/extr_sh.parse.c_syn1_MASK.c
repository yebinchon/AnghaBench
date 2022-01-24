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
struct wordent {int* word; struct wordent* next; } ;
struct command {struct command* t_dcar; struct command* t_dcdr; int /*<<< orphan*/  t_dtyp; } ;

/* Variables and functions */
 int /*<<< orphan*/  NODE_LIST ; 
 struct command* FUNC0 (struct wordent const*,struct wordent const*,int) ; 
 struct command* FUNC1 (struct wordent*,struct wordent const*,int) ; 
 struct command* FUNC2 (int,int) ; 

__attribute__((used)) static struct command *
FUNC3(const struct wordent *p1, const struct wordent *p2, int flags)
{
    const struct wordent *p;
    struct command *t;
    int     l;

    l = 0;
    for (p = p1; p != p2; p = p->next)
	switch (p->word[0]) {

	case '(':
	    l++;
	    continue;

	case ')':
	    l--;
	    continue;

	case ';':
	case '\n':
	    if (l != 0)
		break;
	    t = FUNC2(1, sizeof(*t));
	    t->t_dtyp = NODE_LIST;
	    t->t_dcar = FUNC0(p1, p, flags);
	    t->t_dcdr = FUNC1(p->next, p2, flags);
	    if (t->t_dcdr == 0)
		t->t_dcdr = t->t_dcar, t->t_dcar = 0;
	    return (t);

	default:
	    break;
	}
    return (FUNC0(p1, p2, flags));
}