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
struct vmspace {int dummy; } ;
struct vm {int sockets; int /*<<< orphan*/  maxcpus; int /*<<< orphan*/  threads; int /*<<< orphan*/  cores; int /*<<< orphan*/  rendezvous_mtx; struct vmspace* vmspace; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_VM ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct vmspace* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_MAXCPU ; 
 int /*<<< orphan*/  VM_MAXUSER_ADDRESS ; 
 scalar_t__ VM_MAX_NAMELEN ; 
 int /*<<< orphan*/  cores_per_package ; 
 struct vm* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  threads_per_core ; 
 int /*<<< orphan*/  FUNC5 (struct vm*,int) ; 
 int /*<<< orphan*/  vmm_initialized ; 

int
FUNC6(const char *name, struct vm **retvm)
{
	struct vm *vm;
	struct vmspace *vmspace;

	/*
	 * If vmm.ko could not be successfully initialized then don't attempt
	 * to create the virtual machine.
	 */
	if (!vmm_initialized)
		return (ENXIO);

	if (name == NULL || FUNC4(name) >= VM_MAX_NAMELEN)
		return (EINVAL);

	vmspace = FUNC0(0, VM_MAXUSER_ADDRESS);
	if (vmspace == NULL)
		return (ENOMEM);

	vm = FUNC1(sizeof(struct vm), M_VM, M_WAITOK | M_ZERO);
	FUNC3(vm->name, name);
	vm->vmspace = vmspace;
	FUNC2(&vm->rendezvous_mtx, "vm rendezvous lock", 0, MTX_DEF);

	vm->sockets = 1;
	vm->cores = cores_per_package;	/* XXX backwards compatibility */
	vm->threads = threads_per_core;	/* XXX backwards compatibility */
	vm->maxcpus = VM_MAXCPU;	/* XXX temp to keep code working */

	FUNC5(vm, true);

	*retvm = vm;
	return (0);
}