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
typedef  int /*<<< orphan*/ * vm_rendezvous_func_t ;
struct vm {int maxcpus; int /*<<< orphan*/  rendezvous_mtx; int /*<<< orphan*/ * rendezvous_func; void* rendezvous_arg; int /*<<< orphan*/  rendezvous_done_cpus; int /*<<< orphan*/  rendezvous_req_cpus; } ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm*,int,char*) ; 
 int /*<<< orphan*/  WARN_PANIC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vm*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vm*,int) ; 

void
FUNC9(struct vm *vm, int vcpuid, cpuset_t dest,
    vm_rendezvous_func_t func, void *arg)
{
	int i;

	/*
	 * Enforce that this function is called without any locks
	 */
	FUNC4(WARN_PANIC, NULL, "vm_smp_rendezvous");
	FUNC2(vcpuid == -1 || (vcpuid >= 0 && vcpuid < vm->maxcpus),
	    ("vm_smp_rendezvous: invalid vcpuid %d", vcpuid));

restart:
	FUNC5(&vm->rendezvous_mtx);
	if (vm->rendezvous_func != NULL) {
		/*
		 * If a rendezvous is already in progress then we need to
		 * call the rendezvous handler in case this 'vcpuid' is one
		 * of the targets of the rendezvous.
		 */
		FUNC3(vm, vcpuid, "Rendezvous already in progress");
		FUNC6(&vm->rendezvous_mtx);
		FUNC8(vm, vcpuid);
		goto restart;
	}
	FUNC2(vm->rendezvous_func == NULL, ("vm_smp_rendezvous: previous "
	    "rendezvous is still in progress"));

	FUNC3(vm, vcpuid, "Initiating rendezvous");
	vm->rendezvous_req_cpus = dest;
	FUNC1(&vm->rendezvous_done_cpus);
	vm->rendezvous_arg = arg;
	vm->rendezvous_func = func;
	FUNC6(&vm->rendezvous_mtx);

	/*
	 * Wake up any sleeping vcpus and trigger a VM-exit in any running
	 * vcpus so they handle the rendezvous as soon as possible.
	 */
	for (i = 0; i < vm->maxcpus; i++) {
		if (FUNC0(i, &dest))
			FUNC7(vm, i, false);
	}

	FUNC8(vm, vcpuid);
}