#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct termp {size_t defindent; scalar_t__ synopsisonly; int /*<<< orphan*/  flags; int /*<<< orphan*/  defrmargin; int /*<<< orphan*/  maxrmargin; TYPE_1__* tcol; } ;
struct roff_node {scalar_t__ tok; scalar_t__ type; TYPE_4__* child; int /*<<< orphan*/  string; struct roff_node* next; } ;
struct roff_meta {TYPE_2__* first; } ;
struct mtermp {size_t lmargincur; int pardist; void* offset; void** lmargin; } ;
typedef  int /*<<< orphan*/  mt ;
struct TYPE_8__ {TYPE_3__* next; struct roff_node* child; } ;
struct TYPE_7__ {struct roff_node* child; } ;
struct TYPE_6__ {struct roff_node* child; } ;
struct TYPE_5__ {int /*<<< orphan*/  rmargin; } ;

/* Variables and functions */
 scalar_t__ MAN_SH ; 
 scalar_t__ ROFFT_TEXT ; 
 int /*<<< orphan*/  TERMP_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (struct mtermp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  print_man_foot ; 
 int /*<<< orphan*/  print_man_head ; 
 int /*<<< orphan*/  FUNC1 (struct termp*,struct mtermp*,struct roff_node*,struct roff_meta const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct termp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct roff_meta const*) ; 
 int /*<<< orphan*/  FUNC4 (struct termp*) ; 
 void* FUNC5 (struct termp*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct termp*) ; 
 int /*<<< orphan*/  FUNC7 (struct termp*,char*) ; 

void
FUNC8(void *arg, const struct roff_meta *man)
{
	struct mtermp		 mt;
	struct termp		*p;
	struct roff_node	*n, *nc, *nn;
	size_t			 save_defindent;

	p = (struct termp *)arg;
	save_defindent = p->defindent;
	if (p->synopsisonly == 0 && p->defindent == 0)
		p->defindent = 7;
	p->tcol->rmargin = p->maxrmargin = p->defrmargin;
	FUNC7(p, NULL);
	FUNC7(p, "T");
	FUNC7(p, ".5i");

	FUNC0(&mt, 0, sizeof(mt));
	mt.lmargin[mt.lmargincur] = FUNC5(p, p->defindent);
	mt.offset = FUNC5(p, p->defindent);
	mt.pardist = 1;

	n = man->first->child;
	if (p->synopsisonly) {
		for (nn = NULL; n != NULL; n = n->next) {
			if (n->tok != MAN_SH)
				continue;
			nc = n->child->child;
			if (nc->type != ROFFT_TEXT)
				continue;
			if (FUNC2(nc->string, "SYNOPSIS") == 0)
				break;
			if (nn == NULL && FUNC2(nc->string, "NAME") == 0)
				nn = n;
		}
		if (n == NULL)
			n = nn;
		p->flags |= TERMP_NOSPACE;
		if (n != NULL && (n = n->child->next->child) != NULL)
			FUNC1(p, &mt, n, man);
		FUNC6(p);
	} else {
		FUNC3(p, print_man_head, print_man_foot, man);
		p->flags |= TERMP_NOSPACE;
		if (n != NULL)
			FUNC1(p, &mt, n, man);
		FUNC4(p);
	}
	p->defindent = save_defindent;
}