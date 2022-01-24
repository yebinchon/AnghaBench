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
struct termp {size_t defindent; int /*<<< orphan*/  flags; scalar_t__ synopsisonly; int /*<<< orphan*/  defrmargin; int /*<<< orphan*/  maxrmargin; TYPE_1__* tcol; } ;
struct roff_node {scalar_t__ tok; scalar_t__ sec; scalar_t__ type; int flags; struct roff_node* next; TYPE_4__* child; } ;
struct roff_meta {TYPE_2__* first; } ;
struct TYPE_8__ {TYPE_3__* next; } ;
struct TYPE_7__ {struct roff_node* child; } ;
struct TYPE_6__ {struct roff_node* child; } ;
struct TYPE_5__ {int /*<<< orphan*/  rmargin; } ;

/* Variables and functions */
 scalar_t__ MDOC_Sh ; 
 int NODE_NOPRT ; 
 scalar_t__ ROFFT_COMMENT ; 
 scalar_t__ SEC_NAME ; 
 scalar_t__ SEC_SYNOPSIS ; 
 int /*<<< orphan*/  TERMP_NOSPACE ; 
 int /*<<< orphan*/  print_mdoc_foot ; 
 int /*<<< orphan*/  print_mdoc_head ; 
 int /*<<< orphan*/  FUNC0 (struct termp*,int /*<<< orphan*/ *,struct roff_meta const*,struct roff_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct termp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct roff_meta const*) ; 
 int /*<<< orphan*/  FUNC2 (struct termp*) ; 
 int /*<<< orphan*/  FUNC3 (struct termp*) ; 
 int /*<<< orphan*/  FUNC4 (struct termp*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct termp*) ; 

void
FUNC6(void *arg, const struct roff_meta *mdoc)
{
	struct roff_node	*n, *nn;
	struct termp		*p;
	size_t			 save_defindent;

	p = (struct termp *)arg;
	p->tcol->rmargin = p->maxrmargin = p->defrmargin;
	FUNC4(p, NULL);
	FUNC4(p, "T");
	FUNC4(p, ".5i");

	n = mdoc->first->child;
	if (p->synopsisonly) {
		for (nn = NULL; n != NULL; n = n->next) {
			if (n->tok != MDOC_Sh)
				continue;
			if (n->sec == SEC_SYNOPSIS)
				break;
			if (nn == NULL && n->sec == SEC_NAME)
				nn = n;
		}
		if (n == NULL)
			n = nn;
		p->flags |= TERMP_NOSPACE;
		if (n != NULL && (n = n->child->next->child) != NULL)
			FUNC0(p, NULL, mdoc, n);
		FUNC3(p);
	} else {
		save_defindent = p->defindent;
		if (p->defindent == 0)
			p->defindent = 5;
		FUNC1(p, print_mdoc_head, print_mdoc_foot, mdoc);
		while (n != NULL &&
		    (n->type == ROFFT_COMMENT ||
		     n->flags & NODE_NOPRT))
			n = n->next;
		if (n != NULL) {
			if (n->tok != MDOC_Sh)
				FUNC5(p);
			FUNC0(p, NULL, mdoc, n);
		}
		FUNC2(p);
		p->defindent = save_defindent;
	}
}