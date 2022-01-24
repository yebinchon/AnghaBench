#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct icode {int dummy; } ;
struct block {int level; struct block* link; } ;
struct TYPE_3__ {struct block** levels; } ;
typedef  TYPE_1__ opt_state_t ;

/* Variables and functions */
 struct block* FUNC0 (struct block*) ; 
 struct block* FUNC1 (struct block*) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct icode*,struct block*) ; 
 scalar_t__ FUNC4 (struct icode*,struct block*) ; 

__attribute__((used)) static void
FUNC5(opt_state_t *opt_state, struct icode *ic, struct block *b)
{
	int level;

	if (FUNC4(ic, b))
		return;

	FUNC3(ic, b);
	b->link = 0;

	if (FUNC1(b)) {
		FUNC5(opt_state, ic, FUNC1(b));
		FUNC5(opt_state, ic, FUNC0(b));
		level = FUNC2(FUNC1(b)->level, FUNC0(b)->level) + 1;
	} else
		level = 0;
	b->level = level;
	b->link = opt_state->levels[level];
	opt_state->levels[level] = b;
}