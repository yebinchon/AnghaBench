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
struct vm {int maxcpus; int /*<<< orphan*/  rendezvous_mtx; int /*<<< orphan*/  (* rendezvous_func ) (struct vm*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  rendezvous_done_cpus; int /*<<< orphan*/  rendezvous_req_cpus; int /*<<< orphan*/  rendezvous_arg; int /*<<< orphan*/  active_cpus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct vm*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct vm*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  (*) (struct vm*,int,int /*<<< orphan*/ ),int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct vm*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  (*) (struct vm*,int,int /*<<< orphan*/ )) ; 

__attribute__((used)) static void
FUNC12(struct vm *vm, int vcpuid)
{

	FUNC4(vcpuid == -1 || (vcpuid >= 0 && vcpuid < vm->maxcpus),
	    ("vm_handle_rendezvous: invalid vcpuid %d", vcpuid));

	FUNC7(&vm->rendezvous_mtx);
	while (vm->rendezvous_func != NULL) {
		/* 'rendezvous_req_cpus' must be a subset of 'active_cpus' */
		FUNC0(&vm->rendezvous_req_cpus, &vm->active_cpus);

		if (vcpuid != -1 &&
		    FUNC2(vcpuid, &vm->rendezvous_req_cpus) &&
		    !FUNC2(vcpuid, &vm->rendezvous_done_cpus)) {
			FUNC6(vm, vcpuid, "Calling rendezvous func");
			(*vm->rendezvous_func)(vm, vcpuid, vm->rendezvous_arg);
			FUNC3(vcpuid, &vm->rendezvous_done_cpus);
		}
		if (FUNC1(&vm->rendezvous_req_cpus,
		    &vm->rendezvous_done_cpus) == 0) {
			FUNC6(vm, vcpuid, "Rendezvous completed");
			vm->rendezvous_func = NULL;
			FUNC11(vm->rendezvous_func);
			break;
		}
		FUNC5(vm, vcpuid, "Wait for rendezvous completion");
		FUNC8(vm->rendezvous_func, &vm->rendezvous_mtx, 0,
		    "vmrndv", 0);
	}
	FUNC9(&vm->rendezvous_mtx);
}