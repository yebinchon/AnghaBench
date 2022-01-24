#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct icode {TYPE_8__* root; } ;
struct block {struct block* link; int /*<<< orphan*/  ef; int /*<<< orphan*/  et; } ;
struct TYPE_10__ {struct block** levels; } ;
typedef  TYPE_1__ opt_state_t ;
typedef  int /*<<< orphan*/  compiler_state_t ;
struct TYPE_11__ {int level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct block*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,struct block*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct block*) ; 

__attribute__((used)) static void
FUNC6(compiler_state_t *cstate, opt_state_t *opt_state, struct icode *ic,
    int do_stmts)
{
	int i, maxlevel;
	struct block *p;

	FUNC2(opt_state);
	maxlevel = ic->root->level;

	FUNC1(opt_state, ic->root);
	for (i = maxlevel; i >= 0; --i)
		for (p = opt_state->levels[i]; p; p = p->link)
			FUNC3(cstate, opt_state, p, do_stmts);

	if (do_stmts)
		/*
		 * No point trying to move branches; it can't possibly
		 * make a difference at this point.
		 */
		return;

	for (i = 1; i <= maxlevel; ++i) {
		for (p = opt_state->levels[i]; p; p = p->link) {
			FUNC4(opt_state, &p->et);
			FUNC4(opt_state, &p->ef);
		}
	}

	FUNC1(opt_state, ic->root);
	for (i = 1; i <= maxlevel; ++i) {
		for (p = opt_state->levels[i]; p; p = p->link) {
			FUNC5(opt_state, p);
			FUNC0(opt_state, p);
		}
	}
}