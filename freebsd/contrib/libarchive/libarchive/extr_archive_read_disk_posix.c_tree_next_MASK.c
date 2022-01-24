#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tree {scalar_t__ d; int visit_type; int /*<<< orphan*/  flags; TYPE_1__* stack; TYPE_1__* current; } ;
struct TYPE_4__ {int /*<<< orphan*/  s; } ;
struct TYPE_3__ {int flags; TYPE_2__ name; } ;

/* Variables and functions */
 scalar_t__ INVALID_DIR_HANDLE ; 
 int TREE_POSTASCENT ; 
 int TREE_POSTDESCENT ; 
 int TREE_REGULAR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  hasLstat ; 
 int /*<<< orphan*/  hasStat ; 
 int needsAscent ; 
 int needsDescent ; 
 int needsFirstVisit ; 
 int needsOpen ; 
 int /*<<< orphan*/  FUNC1 (struct tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tree*) ; 
 int FUNC3 (struct tree*) ; 
 int FUNC4 (struct tree*) ; 
 int /*<<< orphan*/  FUNC5 (struct tree*) ; 

__attribute__((used)) static int
FUNC6(struct tree *t)
{
	int r;

	while (t->stack != NULL) {
		/* If there's an open dir, get the next entry from there. */
		if (t->d != INVALID_DIR_HANDLE) {
			r = FUNC4(t);
			if (r == 0)
				continue;
			return (r);
		}

		if (t->stack->flags & needsFirstVisit) {
			/* Top stack item needs a regular visit. */
			t->current = t->stack;
			FUNC1(t, t->stack->name.s,
			    FUNC0(&(t->stack->name)));
			/* t->dirname_length = t->path_length; */
			/* tree_pop(t); */
			t->stack->flags &= ~needsFirstVisit;
			return (t->visit_type = TREE_REGULAR);
		} else if (t->stack->flags & needsDescent) {
			/* Top stack item is dir to descend into. */
			t->current = t->stack;
			FUNC1(t, t->stack->name.s,
			    FUNC0(&(t->stack->name)));
			t->stack->flags &= ~needsDescent;
			r = FUNC3(t);
			if (r != 0) {
				FUNC5(t);
				t->visit_type = r;
			} else
				t->visit_type = TREE_POSTDESCENT;
			return (t->visit_type);
		} else if (t->stack->flags & needsOpen) {
			t->stack->flags &= ~needsOpen;
			r = FUNC4(t);
			if (r == 0)
				continue;
			return (r);
		} else if (t->stack->flags & needsAscent) {
		        /* Top stack item is dir and we're done with it. */
			r = FUNC2(t);
			FUNC5(t);
			t->visit_type = r != 0 ? r : TREE_POSTASCENT;
			return (t->visit_type);
		} else {
			/* Top item on stack is dead. */
			FUNC5(t);
			t->flags &= ~hasLstat;
			t->flags &= ~hasStat;
		}
	}
	return (t->visit_type = 0);
}