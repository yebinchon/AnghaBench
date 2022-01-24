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
struct vm {int maxcpus; int /*<<< orphan*/  debug_cpus; int /*<<< orphan*/  active_cpus; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct vm*,int,int) ; 

int
FUNC3(struct vm *vm, int vcpuid)
{
	int i;

	if (vcpuid < -1 || vcpuid >= vm->maxcpus)
		return (EINVAL);

	if (vcpuid == -1) {
		vm->debug_cpus = vm->active_cpus;
		for (i = 0; i < vm->maxcpus; i++) {
			if (FUNC0(i, &vm->active_cpus))
				FUNC2(vm, i, false);
		}
	} else {
		if (!FUNC0(vcpuid, &vm->active_cpus))
			return (EINVAL);

		FUNC1(vcpuid, &vm->debug_cpus);
		FUNC2(vm, vcpuid, false);
	}
	return (0);
}