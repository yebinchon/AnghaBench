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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_2__ {int k; } ;
struct slist {TYPE_1__ s; } ;
struct block {struct slist* stmts; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;
typedef  int /*<<< orphan*/  bpf_int32 ;

/* Variables and functions */
 int BPF_ALU ; 
 int BPF_AND ; 
 int /*<<< orphan*/  BPF_B ; 
 int /*<<< orphan*/  BPF_JEQ ; 
 int BPF_K ; 
 int BPF_OR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OR_LINKHDR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct block* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct block* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct block* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct block*) ; 
 struct block* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct slist* FUNC7 (int /*<<< orphan*/ *,int) ; 

struct block *
FUNC8(compiler_state_t *cstate, int op, int idx, int val)
{
	struct block *b;
	struct slist *s;

	switch (op) {
	default:
		FUNC1();

	case '=':
		return FUNC2(cstate, OR_LINKHDR, (u_int)idx, BPF_B, (bpf_int32)val);

	case '<':
		b = FUNC4(cstate, OR_LINKHDR, (u_int)idx, BPF_B, (bpf_int32)val);
		return b;

	case '>':
		b = FUNC3(cstate, OR_LINKHDR, (u_int)idx, BPF_B, (bpf_int32)val);
		return b;

	case '|':
		s = FUNC7(cstate, BPF_ALU|BPF_OR|BPF_K);
		break;

	case '&':
		s = FUNC7(cstate, BPF_ALU|BPF_AND|BPF_K);
		break;
	}
	s->s.k = val;
	b = FUNC6(cstate, FUNC0(BPF_JEQ));
	b->stmts = s;
	FUNC5(b);

	return b;
}