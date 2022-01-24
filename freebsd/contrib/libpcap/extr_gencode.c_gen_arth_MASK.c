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
struct TYPE_2__ {int code; scalar_t__ k; } ;
struct slist {TYPE_1__ s; } ;
struct arth {scalar_t__ regno; struct slist* s; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;

/* Variables and functions */
 int BPF_ALU ; 
 int BPF_DIV ; 
 int BPF_IMM ; 
 int BPF_LD ; 
 int BPF_MOD ; 
 int BPF_ST ; 
 int BPF_X ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct slist* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct slist*,struct slist*) ; 
 struct slist* FUNC5 (int /*<<< orphan*/ *,struct arth*) ; 
 struct slist* FUNC6 (int /*<<< orphan*/ *,struct arth*) ; 

struct arth *
FUNC7(compiler_state_t *cstate, int code, struct arth *a0,
    struct arth *a1)
{
	struct slist *s0, *s1, *s2;

	/*
	 * Disallow division by, or modulus by, zero; we do this here
	 * so that it gets done even if the optimizer is disabled.
	 */
	if (code == BPF_DIV) {
		if (a1->s->s.code == (BPF_LD|BPF_IMM) && a1->s->s.k == 0)
			FUNC1(cstate, "division by zero");
	} else if (code == BPF_MOD) {
		if (a1->s->s.code == (BPF_LD|BPF_IMM) && a1->s->s.k == 0)
			FUNC1(cstate, "modulus by zero");
	}
	s0 = FUNC6(cstate, a1);
	s1 = FUNC5(cstate, a0);
	s2 = FUNC3(cstate, BPF_ALU|BPF_X|code);

	FUNC4(s1, s2);
	FUNC4(s0, s1);
	FUNC4(a1->s, s0);
	FUNC4(a0->s, a1->s);

	FUNC2(cstate, a0->regno);
	FUNC2(cstate, a1->regno);

	s0 = FUNC3(cstate, BPF_ST);
	a0->regno = s0->s.k = FUNC0(cstate);
	FUNC4(a0->s, s0);

	return a0;
}