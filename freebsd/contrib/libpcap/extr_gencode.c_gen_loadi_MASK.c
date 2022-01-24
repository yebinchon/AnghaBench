#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int k; } ;
struct slist {TYPE_2__* next; TYPE_3__ s; } ;
struct arth {int regno; struct slist* s; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;
struct TYPE_4__ {int k; } ;
struct TYPE_5__ {TYPE_1__ s; } ;

/* Variables and functions */
 int BPF_IMM ; 
 int BPF_LD ; 
 int BPF_ST ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

struct arth *
FUNC3(compiler_state_t *cstate, int val)
{
	struct arth *a;
	struct slist *s;
	int reg;

	a = (struct arth *)FUNC2(cstate, sizeof(*a));

	reg = FUNC0(cstate);

	s = FUNC1(cstate, BPF_LD|BPF_IMM);
	s->s.k = val;
	s->next = FUNC1(cstate, BPF_ST);
	s->next->s.k = reg;
	a->s = s;
	a->regno = reg;

	return a;
}