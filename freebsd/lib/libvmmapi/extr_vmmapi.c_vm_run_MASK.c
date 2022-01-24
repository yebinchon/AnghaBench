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
typedef  int /*<<< orphan*/  vmrun ;
struct vmctx {int /*<<< orphan*/  fd; } ;
struct vm_run {int cpuid; int /*<<< orphan*/  vm_exit; } ;
struct vm_exit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct vm_exit*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_run*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_run*) ; 

int
FUNC3(struct vmctx *ctx, int vcpu, struct vm_exit *vmexit)
{
	int error;
	struct vm_run vmrun;

	FUNC1(&vmrun, sizeof(vmrun));
	vmrun.cpuid = vcpu;

	error = FUNC2(ctx->fd, VM_RUN, &vmrun);
	FUNC0(&vmrun.vm_exit, vmexit, sizeof(struct vm_exit));
	return (error);
}