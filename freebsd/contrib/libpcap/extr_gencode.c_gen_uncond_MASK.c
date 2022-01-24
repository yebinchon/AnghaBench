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
struct TYPE_2__ {int k; } ;
struct slist {TYPE_1__ s; } ;
struct block {struct slist* stmts; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;

/* Variables and functions */
 int BPF_IMM ; 
 int /*<<< orphan*/  BPF_JEQ ; 
 int BPF_LD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct block* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct slist* FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct block *
FUNC3(compiler_state_t *cstate, int rsense)
{
	struct block *b;
	struct slist *s;

	s = FUNC2(cstate, BPF_LD|BPF_IMM);
	s->s.k = !rsense;
	b = FUNC1(cstate, FUNC0(BPF_JEQ));
	b->stmts = s;

	return b;
}