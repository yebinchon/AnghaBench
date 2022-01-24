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
struct TYPE_2__ {int k; } ;
struct block {struct slist* stmts; TYPE_1__ s; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_B ; 
 int /*<<< orphan*/  BPF_JSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OR_LLC ; 
 int /*<<< orphan*/  FUNC1 (struct block*,struct block*) ; 
 struct block* FUNC2 (int /*<<< orphan*/ *) ; 
 struct slist* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct block*) ; 
 struct block* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct block *
FUNC6(compiler_state_t *cstate)
{
	struct block *b0, *b1;
	struct slist *s;

	/*
	 * Check whether this is an LLC frame.
	 */
	b0 = FUNC2(cstate);

	/*
	 * Load the control byte and test the low-order bit; it must
	 * be clear for I frames.
	 */
	s = FUNC3(cstate, OR_LLC, 2, BPF_B);
	b1 = FUNC5(cstate, FUNC0(BPF_JSET));
	b1->s.k = 0x01;
	b1->stmts = s;
	FUNC4(b1);
	FUNC1(b0, b1);
	return b1;
}