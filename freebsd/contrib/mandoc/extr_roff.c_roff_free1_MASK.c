#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct roff {scalar_t__ mstackpos; int rstackpos; TYPE_1__* xtab; int /*<<< orphan*/ * xmbtab; int /*<<< orphan*/ * rentab; int /*<<< orphan*/ * strtab; int /*<<< orphan*/ * regtab; scalar_t__ rstacksz; TYPE_1__* rstack; scalar_t__ last; int /*<<< orphan*/ * eqn; int /*<<< orphan*/  last_eqn; int /*<<< orphan*/ * tbl; int /*<<< orphan*/  last_tbl; int /*<<< orphan*/  first_tbl; } ;
struct TYPE_2__ {struct TYPE_2__* p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct roff*) ; 
 int /*<<< orphan*/  FUNC5 (struct roff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct roff *r)
{
	int		 i;

	FUNC6(r->first_tbl);
	r->first_tbl = r->last_tbl = *(r->tbl = NULL);

	FUNC0(r->last_eqn);
	r->last_eqn = *(r->eqn = NULL);

	while (r->mstackpos >= 0)
		FUNC4(r);

	while (r->last)
		FUNC5(r);

	FUNC1 (r->rstack);
	r->rstack = NULL;
	r->rstacksz = 0;
	r->rstackpos = -1;

	FUNC2(r->regtab);
	r->regtab = NULL;

	FUNC3(r->strtab);
	FUNC3(r->rentab);
	FUNC3(r->xmbtab);
	r->strtab = r->rentab = r->xmbtab = NULL;

	if (r->xtab)
		for (i = 0; i < 128; i++)
			FUNC1(r->xtab[i].p);
	FUNC1(r->xtab);
	r->xtab = NULL;
}