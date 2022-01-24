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
struct TYPE_2__ {scalar_t__ k; } ;
struct block {TYPE_1__ s; struct slist* stmts; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;

/* Variables and functions */
 int BPF_JEQ ; 
 int BPF_JMP ; 
 int BPF_MISC ; 
 int BPF_TXA ; 
 int BPF_X ; 
 int /*<<< orphan*/  OR_TRAN_IPV4 ; 
 int /*<<< orphan*/  FUNC0 (struct block*,struct block*) ; 
 struct block* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct slist* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gen_port ; 
 struct block* FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct slist* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct slist*,struct slist*) ; 

__attribute__((used)) static struct block *
FUNC6(compiler_state_t *cstate, int vni)
{
	struct block *b0, *b1;
	struct slist *s, *s1;

	b0 = FUNC1(cstate, gen_port, OR_TRAN_IPV4, vni);

	/* Load the IP header length into A. */
	s = FUNC2(cstate);

	s1 = FUNC4(cstate, BPF_MISC|BPF_TXA);
	FUNC5(s, s1);

	/* Forcibly append these statements to the true condition
	 * of the protocol check by creating a new block that is
	 * always true and ANDing them. */
	b1 = FUNC3(cstate, BPF_JMP|BPF_JEQ|BPF_X);
	b1->stmts = s;
	b1->s.k = 0;

	FUNC0(b0, b1);

	return b1;
}