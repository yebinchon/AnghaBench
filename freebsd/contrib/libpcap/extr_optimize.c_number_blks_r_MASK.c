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
struct block {int id; } ;
struct TYPE_3__ {struct block** blocks; int /*<<< orphan*/  n_blocks; } ;
typedef  TYPE_1__ opt_state_t ;

/* Variables and functions */
 struct block* FUNC0 (struct block*) ; 
 struct block* FUNC1 (struct block*) ; 
 int /*<<< orphan*/  FUNC2 (struct icode*,struct block*) ; 
 scalar_t__ FUNC3 (struct icode*,struct block*) ; 

__attribute__((used)) static void
FUNC4(opt_state_t *opt_state, struct icode *ic, struct block *p)
{
	int n;

	if (p == 0 || FUNC3(ic, p))
		return;

	FUNC2(ic, p);
	n = opt_state->n_blocks++;
	p->id = n;
	opt_state->blocks[n] = p;

	FUNC4(opt_state, ic, FUNC1(p));
	FUNC4(opt_state, ic, FUNC0(p));
}