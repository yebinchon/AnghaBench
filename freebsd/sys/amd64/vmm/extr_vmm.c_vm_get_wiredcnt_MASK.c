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
struct vmm_stat_type {int dummy; } ;
struct vm {int /*<<< orphan*/  vmspace; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  VMM_MEM_WIRED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vm*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct vm *vm, int vcpu, struct vmm_stat_type *stat)
{

	if (vcpu == 0) {
		FUNC1(vm, vcpu, VMM_MEM_WIRED,
	      	    PAGE_SIZE * FUNC0(FUNC2(vm->vmspace)));
	}	
}