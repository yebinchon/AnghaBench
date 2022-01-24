#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vmstate {TYPE_1__* ph; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_7__ {int /*<<< orphan*/  program; struct vmstate* vmst; } ;
typedef  TYPE_2__ kvm_t ;
typedef  int /*<<< orphan*/  kvaddr_t ;
struct TYPE_6__ {int /*<<< orphan*/  p_paddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(kvm_t *kd, kvaddr_t va, off_t *ofs)
{
	struct vmstate *vm;

	vm = kd->vmst;
	if (FUNC1(vm->ph->p_paddr) == 0xffffffffffffffff)
		return ((int)FUNC2(kd, va, ofs));

	FUNC0(kd, kd->program, "Raw corefile not supported");
	return (0);
}