#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct trapframe {int /*<<< orphan*/  tf_r3; int /*<<< orphan*/  tf_r2; int /*<<< orphan*/  tf_r1; int /*<<< orphan*/  tf_r0; scalar_t__ tf_svc_sp; } ;
struct TYPE_5__ {uintptr_t cpu_dtrace_caller; } ;
typedef  TYPE_1__ solaris_cpu_t ;
typedef  int /*<<< orphan*/  register_t ;
struct TYPE_6__ {int fbtp_rval; int fbtp_savedval; int /*<<< orphan*/  fbtp_id; scalar_t__ fbtp_patchpoint; struct TYPE_6__* fbtp_hashnext; } ;
typedef  TYPE_2__ fbt_probe_t ;

/* Variables and functions */
 int CPU_DTRACE_BADADDR ; 
 int CPU_DTRACE_NOFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DTRACE_INVOP_SHIFT ; 
 size_t FUNC2 (uintptr_t) ; 
 size_t curcpu ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__** fbt_probetab ; 
 TYPE_1__* solaris_cpu ; 

int
FUNC4(uintptr_t addr, struct trapframe *frame, uintptr_t rval)
{
	solaris_cpu_t *cpu = &solaris_cpu[curcpu];
	fbt_probe_t *fbt = fbt_probetab[FUNC2(addr)];
	register_t fifthparam;

	for (; fbt != NULL; fbt = fbt->fbtp_hashnext) {
		if ((uintptr_t)fbt->fbtp_patchpoint == addr) {
			cpu->cpu_dtrace_caller = addr;

			/* Get 5th parameter from stack */
			FUNC1(CPU_DTRACE_NOFAULT);
			fifthparam = *(register_t *)frame->tf_svc_sp;
			FUNC0(CPU_DTRACE_NOFAULT | CPU_DTRACE_BADADDR);

			FUNC3(fbt->fbtp_id, frame->tf_r0,
			    frame->tf_r1, frame->tf_r2,
			    frame->tf_r3, fifthparam);

			cpu->cpu_dtrace_caller = 0;

			return (fbt->fbtp_rval | (fbt->fbtp_savedval << DTRACE_INVOP_SHIFT));
		}
	}

	return (0);
}