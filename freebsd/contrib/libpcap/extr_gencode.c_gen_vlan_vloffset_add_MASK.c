#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int k; } ;
struct slist {TYPE_1__ s; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;
struct TYPE_5__ {int is_variable; int reg; } ;
typedef  TYPE_2__ bpf_abs_offset ;

/* Variables and functions */
 int BPF_ADD ; 
 int BPF_ALU ; 
 int BPF_IMM ; 
 int BPF_LD ; 
 int BPF_MEM ; 
 int BPF_ST ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct slist* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct slist*,struct slist*) ; 

__attribute__((used)) static void
FUNC3(compiler_state_t *cstate, bpf_abs_offset *off, int v, struct slist *s)
{
	struct slist *s2;

	if (!off->is_variable)
		off->is_variable = 1;
	if (off->reg == -1)
		off->reg = FUNC0(cstate);

	s2 = FUNC1(cstate, BPF_LD|BPF_MEM);
	s2->s.k = off->reg;
	FUNC2(s, s2);
	s2 = FUNC1(cstate, BPF_ALU|BPF_ADD|BPF_IMM);
	s2->s.k = v;
	FUNC2(s, s2);
	s2 = FUNC1(cstate, BPF_ST);
	s2->s.k = off->reg;
	FUNC2(s, s2);
}