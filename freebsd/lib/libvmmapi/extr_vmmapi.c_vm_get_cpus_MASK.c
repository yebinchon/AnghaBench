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
struct vmctx {int /*<<< orphan*/  fd; } ;
struct vm_cpuset {int which; int cpusetsize; int /*<<< orphan*/ * cpus; } ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  VM_GET_CPUS ; 
 int /*<<< orphan*/  FUNC0 (struct vm_cpuset*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_cpuset*) ; 

__attribute__((used)) static int
FUNC2(struct vmctx *ctx, int which, cpuset_t *cpus)
{
	struct vm_cpuset vm_cpuset;
	int error;

	FUNC0(&vm_cpuset, sizeof(struct vm_cpuset));
	vm_cpuset.which = which;
	vm_cpuset.cpusetsize = sizeof(cpuset_t);
	vm_cpuset.cpus = cpus;

	error = FUNC1(ctx->fd, VM_GET_CPUS, &vm_cpuset);
	return (error);
}