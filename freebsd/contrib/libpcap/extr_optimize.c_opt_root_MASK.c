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
struct slist {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  code; } ;
struct block {struct slist* stmts; TYPE_1__ s; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BPF_JMP ; 
 scalar_t__ BPF_RET ; 
 struct block* FUNC1 (struct block*) ; 
 struct block* FUNC2 (struct block*) ; 
 int /*<<< orphan*/  FUNC3 (struct slist*,struct slist*) ; 

__attribute__((used)) static void
FUNC4(struct block **b)
{
	struct slist *tmp, *s;

	s = (*b)->stmts;
	(*b)->stmts = 0;
	while (FUNC0((*b)->s.code) == BPF_JMP && FUNC2(*b) == FUNC1(*b))
		*b = FUNC2(*b);

	tmp = (*b)->stmts;
	if (tmp != 0)
		FUNC3(s, tmp);
	(*b)->stmts = s;

	/*
	 * If the root node is a return, then there is no
	 * point executing any statements (since the bpf machine
	 * has no side effects).
	 */
	if (FUNC0((*b)->s.code) == BPF_RET)
		(*b)->stmts = 0;
}