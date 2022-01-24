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
typedef  uintptr_t uint64_t ;
struct trapframe {scalar_t__ tf_isp; } ;
struct i386_frame {int /*<<< orphan*/  f_retaddr; struct i386_frame* f_frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_DTRACE_NOFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ dtrace_invop_callsite ; 

uint64_t
FUNC4(int arg, int aframes)
{
	struct trapframe *frame;
	struct i386_frame *fp = (struct i386_frame *)FUNC3();
	uintptr_t *stack, val;
	int i;

	for (i = 1; i <= aframes; i++) {
		fp = fp->f_frame;

		if (FUNC2(fp->f_retaddr, 4) ==
		    (long)dtrace_invop_callsite) {
			/*
			 * If we pass through the invalid op handler, we will
			 * use the trap frame pointer that it pushed on the
			 * stack as the second argument to dtrace_invop() as
			 * the pointer to the stack.  When using this stack, we
			 * must skip the third argument to dtrace_invop(),
			 * which is included in the i386_frame.
			 */
			frame = (struct trapframe *)(((uintptr_t **)&fp[1])[0]);
			/*
			 * Skip the three hardware-saved registers and the
			 * return address.
			 */
			stack = (uintptr_t *)frame->tf_isp + 4;
			goto load;
		}

	}

	/*
	 * We know that we did not come through a trap to get into
	 * dtrace_probe() -- the provider simply called dtrace_probe()
	 * directly.  As this is the case, we need to shift the argument
	 * that we're looking for:  the probe ID is the first argument to
	 * dtrace_probe(), so the argument n will actually be found where
	 * one would expect to find argument (n + 1).
	 */
	arg++;

	stack = (uintptr_t *)fp + 2;

load:
	FUNC1(CPU_DTRACE_NOFAULT);
	val = stack[arg];
	FUNC0(CPU_DTRACE_NOFAULT);

	return (val);
}