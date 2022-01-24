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
struct vm {int maxcpus; int /*<<< orphan*/  suspended_cpus; scalar_t__ suspend; int /*<<< orphan*/  debug_cpus; int /*<<< orphan*/  active_cpus; int /*<<< orphan*/  vrtc; int /*<<< orphan*/  vpmtmr; int /*<<< orphan*/  vatpit; int /*<<< orphan*/  vatpic; int /*<<< orphan*/  vhpet; int /*<<< orphan*/  vioapic; int /*<<< orphan*/ * iommu; int /*<<< orphan*/  vmspace; int /*<<< orphan*/  cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vm*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vm*) ; 
 int /*<<< orphan*/  FUNC6 (struct vm*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vm*) ; 
 int /*<<< orphan*/  FUNC9 (struct vm*) ; 

__attribute__((used)) static void
FUNC10(struct vm *vm, bool create)
{
	int i;

	vm->cookie = FUNC1(vm, FUNC7(vm->vmspace));
	vm->iommu = NULL;
	vm->vioapic = FUNC6(vm);
	vm->vhpet = FUNC5(vm);
	vm->vatpic = FUNC2(vm);
	vm->vatpit = FUNC3(vm);
	vm->vpmtmr = FUNC8(vm);
	if (create)
		vm->vrtc = FUNC9(vm);

	FUNC0(&vm->active_cpus);
	FUNC0(&vm->debug_cpus);

	vm->suspend = 0;
	FUNC0(&vm->suspended_cpus);

	for (i = 0; i < vm->maxcpus; i++)
		FUNC4(vm, i, create);
}