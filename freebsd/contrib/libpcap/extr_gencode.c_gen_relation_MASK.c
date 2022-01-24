#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct slist {int dummy; } ;
struct block {struct slist* stmts; } ;
struct arth {struct block* b; int /*<<< orphan*/  regno; struct slist* s; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;

/* Variables and functions */
 int BPF_ALU ; 
 int BPF_JEQ ; 
 int BPF_JMP ; 
 int BPF_SUB ; 
 int BPF_X ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct block*,struct block*) ; 
 int /*<<< orphan*/  FUNC3 (struct block*) ; 
 struct block* FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct slist* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct slist*,struct slist*) ; 
 struct slist* FUNC7 (int /*<<< orphan*/ *,struct arth*) ; 
 struct slist* FUNC8 (int /*<<< orphan*/ *,struct arth*) ; 

struct block *
FUNC9(compiler_state_t *cstate, int code, struct arth *a0,
    struct arth *a1, int reversed)
{
	struct slist *s0, *s1, *s2;
	struct block *b, *tmp;

	s0 = FUNC8(cstate, a1);
	s1 = FUNC7(cstate, a0);
	if (code == BPF_JEQ) {
		s2 = FUNC5(cstate, BPF_ALU|BPF_SUB|BPF_X);
		b = FUNC4(cstate, FUNC0(code));
		FUNC6(s1, s2);
	}
	else
		b = FUNC4(cstate, BPF_JMP|code|BPF_X);
	if (reversed)
		FUNC3(b);

	FUNC6(s0, s1);
	FUNC6(a1->s, s0);
	FUNC6(a0->s, a1->s);

	b->stmts = a0->s;

	FUNC1(cstate, a0->regno);
	FUNC1(cstate, a1->regno);

	/* 'and' together protocol checks */
	if (a0->b) {
		if (a1->b) {
			FUNC2(a0->b, tmp = a1->b);
		}
		else
			tmp = a0->b;
	} else
		tmp = a1->b;

	if (tmp)
		FUNC2(tmp, b);

	return b;
}