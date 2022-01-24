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
 int /*<<< orphan*/  OR_LINKHDR ; 
 int /*<<< orphan*/  FUNC1 (struct block*,struct block*) ; 
 struct slist* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct block*) ; 
 struct block* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct block *
FUNC5(compiler_state_t *cstate)
{
	struct slist *s;
	struct block *b0, *b1;

	/*
	 * A data frame has the 0x08 bit (b3) in the frame control field set
	 * and the 0x04 bit (b2) clear.
	 */
	s = FUNC2(cstate, OR_LINKHDR, 0, BPF_B);
	b0 = FUNC4(cstate, FUNC0(BPF_JSET));
	b0->s.k = 0x08;
	b0->stmts = s;

	s = FUNC2(cstate, OR_LINKHDR, 0, BPF_B);
	b1 = FUNC4(cstate, FUNC0(BPF_JSET));
	b1->s.k = 0x04;
	b1->stmts = s;
	FUNC3(b1);

	FUNC1(b1, b0);

	return b0;
}