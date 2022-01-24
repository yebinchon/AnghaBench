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
typedef  int /*<<< orphan*/  vmcap ;
struct vmctx {int /*<<< orphan*/  fd; } ;
struct vm_capability {int cpuid; int captype; int capval; } ;
typedef  enum vm_cap_type { ____Placeholder_vm_cap_type } vm_cap_type ;

/* Variables and functions */
 int /*<<< orphan*/  VM_SET_CAPABILITY ; 
 int /*<<< orphan*/  FUNC0 (struct vm_capability*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_capability*) ; 

int
FUNC2(struct vmctx *ctx, int vcpu, enum vm_cap_type cap, int val)
{
	struct vm_capability vmcap;

	FUNC0(&vmcap, sizeof(vmcap));
	vmcap.cpuid = vcpu;
	vmcap.captype = cap;
	vmcap.capval = val;

	return (FUNC1(ctx->fd, VM_SET_CAPABILITY, &vmcap));
}