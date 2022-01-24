#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_2__ {int op_byte; } ;
struct vie {int opsize; size_t reg; int immediate; TYPE_1__ op; } ;
typedef  int (* mem_region_write_t ) (void*,int,int,int,int,void*) ;
typedef  int (* mem_region_read_t ) (void*,int,int,int*,int,void*) ;
typedef  enum vm_reg_name { ____Placeholder_vm_reg_name } vm_reg_name ;

/* Variables and functions */
 int EINVAL ; 
 int PSL_N ; 
 int PSL_PF ; 
 int PSL_Z ; 
 int RFLAGS_STATUS_BITS ; 
 int VM_REG_GUEST_RFLAGS ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int* gpr_map ; 
 int FUNC1 (void*,int,int,int*) ; 
 int FUNC2 (void*,int,int,int,int) ; 

__attribute__((used)) static int
FUNC3(void *vm, int vcpuid, uint64_t gpa, struct vie *vie,
	    mem_region_read_t memread, mem_region_write_t memwrite, void *arg)
{
	int error, size;
	enum vm_reg_name reg;
	uint64_t result, rflags, rflags2, val1, val2;

	size = vie->opsize;
	error = EINVAL;

	switch (vie->op.op_byte) {
	case 0x23:
		/*
		 * AND reg (ModRM:reg) and mem (ModRM:r/m) and store the
		 * result in reg.
		 *
		 * 23/r		and r16, r/m16
		 * 23/r		and r32, r/m32
		 * REX.W + 23/r	and r64, r/m64
		 */

		/* get the first operand */
		reg = gpr_map[vie->reg];
		error = FUNC1(vm, vcpuid, reg, &val1);
		if (error)
			break;

		/* get the second operand */
		error = memread(vm, vcpuid, gpa, &val2, size, arg);
		if (error)
			break;

		/* perform the operation and write the result */
		result = val1 & val2;
		error = FUNC2(vm, vcpuid, reg, result, size);
		break;
	case 0x81:
	case 0x83:
		/*
		 * AND mem (ModRM:r/m) with immediate and store the
		 * result in mem.
		 *
		 * 81 /4		and r/m16, imm16
		 * 81 /4		and r/m32, imm32
		 * REX.W + 81 /4	and r/m64, imm32 sign-extended to 64
		 *
		 * 83 /4		and r/m16, imm8 sign-extended to 16
		 * 83 /4		and r/m32, imm8 sign-extended to 32
		 * REX.W + 83/4		and r/m64, imm8 sign-extended to 64
		 */

		/* get the first operand */
                error = memread(vm, vcpuid, gpa, &val1, size, arg);
                if (error)
			break;

                /*
		 * perform the operation with the pre-fetched immediate
		 * operand and write the result
		 */
                result = val1 & vie->immediate;
                error = memwrite(vm, vcpuid, gpa, result, size, arg);
		break;
	default:
		break;
	}
	if (error)
		return (error);

	error = FUNC1(vm, vcpuid, VM_REG_GUEST_RFLAGS, &rflags);
	if (error)
		return (error);

	/*
	 * OF and CF are cleared; the SF, ZF and PF flags are set according
	 * to the result; AF is undefined.
	 *
	 * The updated status flags are obtained by subtracting 0 from 'result'.
	 */
	rflags2 = FUNC0(size, result, 0);
	rflags &= ~RFLAGS_STATUS_BITS;
	rflags |= rflags2 & (PSL_PF | PSL_Z | PSL_N);

	error = FUNC2(vm, vcpuid, VM_REG_GUEST_RFLAGS, rflags, 8);
	return (error);
}