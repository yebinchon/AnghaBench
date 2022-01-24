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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct vmxctx {int dummy; } ;
struct vmx {struct vmxctx* ctx; int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  VM_REG_GUEST_RAX ; 
 int /*<<< orphan*/  VM_REG_GUEST_RDX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC3 (struct vmx*,int,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC4 (struct vmxctx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct vmx *vmx, int vcpuid, u_int num, bool *retu)
{
	struct vmxctx *vmxctx;
	uint64_t result;
	uint32_t eax, edx;
	int error;

	if (FUNC1(num))
		error = FUNC2(vmx->vm, vcpuid, num, &result, retu);
	else
		error = FUNC3(vmx, vcpuid, num, &result, retu);

	if (error == 0) {
		eax = result;
		vmxctx = &vmx->ctx[vcpuid];
		error = FUNC4(vmxctx, VM_REG_GUEST_RAX, eax);
		FUNC0(error == 0, ("vmxctx_setreg(rax) error %d", error));

		edx = result >> 32;
		error = FUNC4(vmxctx, VM_REG_GUEST_RDX, edx);
		FUNC0(error == 0, ("vmxctx_setreg(rdx) error %d", error));
	}

	return (error);
}