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
typedef  unsigned long uint64_t ;
struct vmx {struct vmcs* vmcs; } ;
struct vmcs {int dummy; } ;
struct vlapic_vtx {struct vmx* vmx; } ;
struct vlapic {size_t vcpuid; int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmcs*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vmcs*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct vlapic *vlapic, int vector, bool level)
{
	struct vlapic_vtx *vlapic_vtx;
	struct vmx *vmx;
	struct vmcs *vmcs;
	uint64_t mask, val;

	FUNC0(vector >= 0 && vector <= 255, ("invalid vector %d", vector));
	FUNC0(!FUNC4(vlapic->vm, vlapic->vcpuid, NULL),
	    ("vmx_set_tmr: vcpu cannot be running"));

	vlapic_vtx = (struct vlapic_vtx *)vlapic;
	vmx = vlapic_vtx->vmx;
	vmcs = &vmx->vmcs[vlapic->vcpuid];
	mask = 1UL << (vector % 64);

	FUNC3(vmcs);
	val = FUNC5(FUNC2(vector));
	if (level)
		val |= mask;
	else
		val &= ~mask;
	FUNC6(FUNC2(vector), val);
	FUNC1(vmcs);
}