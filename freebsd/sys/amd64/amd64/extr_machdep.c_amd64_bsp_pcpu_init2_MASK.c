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
typedef  int vm_offset_t ;
typedef  int uint64_t ;
struct TYPE_2__ {int td_pcb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int PC_PTI_STACK_SZ ; 
 int curpcb ; 
 int pti_rsp0 ; 
 int /*<<< orphan*/  pti_stack ; 
 TYPE_1__ thread0 ; 

void
FUNC2(uint64_t rsp0)
{

	FUNC1(rsp0, rsp0);
	FUNC1(pti_rsp0, ((vm_offset_t)FUNC0(pti_stack) +
	    PC_PTI_STACK_SZ * sizeof(uint64_t)) & ~0xful);
	FUNC1(curpcb, thread0.td_pcb);
}