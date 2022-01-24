#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct slist {TYPE_2__* next; } ;
struct arth {int regno; struct slist* s; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;
struct TYPE_3__ {int k; } ;
struct TYPE_4__ {TYPE_1__ s; } ;

/* Variables and functions */
 int BPF_LD ; 
 int BPF_LEN ; 
 int BPF_ST ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

struct arth *
FUNC3(compiler_state_t *cstate)
{
	int regno = FUNC0(cstate);
	struct arth *a = (struct arth *)FUNC2(cstate, sizeof(*a));
	struct slist *s;

	s = FUNC1(cstate, BPF_LD|BPF_LEN);
	s->next = FUNC1(cstate, BPF_ST);
	s->next->s.k = regno;
	a->s = s;
	a->regno = regno;

	return a;
}