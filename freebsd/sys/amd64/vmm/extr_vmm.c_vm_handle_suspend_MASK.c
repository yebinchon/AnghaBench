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
struct vm {int maxcpus; int /*<<< orphan*/  suspended_cpus; int /*<<< orphan*/ * rendezvous_func; int /*<<< orphan*/  active_cpus; struct vcpu* vcpu; } ;
struct vcpu {int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vm*,int,char*) ; 
 int /*<<< orphan*/  VCPU_FROZEN ; 
 int /*<<< orphan*/  VCPU_SLEEPING ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC4 (struct vcpu*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct vm*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vm*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct vm*,int) ; 

__attribute__((used)) static int
FUNC10(struct vm *vm, int vcpuid, bool *retu)
{
	int i, done;
	struct vcpu *vcpu;

	done = 0;
	vcpu = &vm->vcpu[vcpuid];

	FUNC2(vcpuid, &vm->suspended_cpus);

	/*
	 * Wait until all 'active_cpus' have suspended themselves.
	 *
	 * Since a VM may be suspended at any time including when one or
	 * more vcpus are doing a rendezvous we need to call the rendezvous
	 * handler while we are waiting to prevent a deadlock.
	 */
	FUNC5(vcpu);
	while (1) {
		if (FUNC0(&vm->suspended_cpus, &vm->active_cpus) == 0) {
			FUNC3(vm, vcpuid, "All vcpus suspended");
			break;
		}

		if (vm->rendezvous_func == NULL) {
			FUNC3(vm, vcpuid, "Sleeping during suspend");
			FUNC7(vm, vcpuid, VCPU_SLEEPING);
			FUNC4(vcpu, &vcpu->mtx, "vmsusp", hz);
			FUNC7(vm, vcpuid, VCPU_FROZEN);
		} else {
			FUNC3(vm, vcpuid, "Rendezvous during suspend");
			FUNC8(vcpu);
			FUNC9(vm, vcpuid);
			FUNC5(vcpu);
		}
	}
	FUNC8(vcpu);

	/*
	 * Wakeup the other sleeping vcpus and return to userspace.
	 */
	for (i = 0; i < vm->maxcpus; i++) {
		if (FUNC1(i, &vm->suspended_cpus)) {
			FUNC6(vm, i, false);
		}
	}

	*retu = true;
	return (0);
}