#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct slist {int dummy; } ;
struct block {struct slist* stmts; } ;
struct TYPE_7__ {int is_geneve; } ;
typedef  TYPE_1__ compiler_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct block*,struct block*) ; 
 struct block* FUNC1 (TYPE_1__*,int) ; 
 struct block* FUNC2 (TYPE_1__*,int) ; 
 struct slist* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct block*,struct block*) ; 
 struct block* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct slist*,struct slist*) ; 

struct block *
FUNC7(compiler_state_t *cstate, int vni)
{
	struct block *b0, *b1;
	struct slist *s;

	b0 = FUNC1(cstate, vni);
	b1 = FUNC2(cstate, vni);

	FUNC4(b0, b1);
	b0 = b1;

	/* Later filters should act on the payload of the Geneve frame,
	 * update all of the header pointers. Attach this code so that
	 * it gets executed in the event that the Geneve filter matches. */
	s = FUNC3(cstate);

	b1 = FUNC5(cstate);
	FUNC6(s, b1->stmts);
	b1->stmts = s;

	FUNC0(b0, b1);

	cstate->is_geneve = 1;

	return b1;
}