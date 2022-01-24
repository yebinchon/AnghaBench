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
struct thread {struct pcb* td_pcb; } ;
struct TYPE_2__ {int /*<<< orphan*/  en_mxcsr; } ;
struct savefpu {TYPE_1__ sv_env; } ;
struct pcb {int dummy; } ;

/* Variables and functions */
 int PCB_FPUINITDONE ; 
 int PCB_USERFPUINITDONE ; 
 scalar_t__ FUNC0 (struct pcb*) ; 
 struct thread* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct savefpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cpu_mxcsr_mask ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  fpcurthread ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct thread*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*) ; 
 int /*<<< orphan*/  FUNC9 (struct pcb*,int) ; 

int
FUNC10(struct thread *td, struct savefpu *addr, char *xfpustate,
    size_t xfpustate_size)
{
	struct pcb *pcb;
	int error;

	addr->sv_env.en_mxcsr &= cpu_mxcsr_mask;
	pcb = td->td_pcb;
	error = 0;
	FUNC3();
	if (td == FUNC1(fpcurthread) && FUNC0(pcb)) {
		error = FUNC6(td, xfpustate, xfpustate_size);
		if (error == 0) {
			FUNC2(addr, FUNC8(td), sizeof(*addr));
			FUNC5(FUNC8(td));
			FUNC9(pcb, PCB_FPUINITDONE |
			    PCB_USERFPUINITDONE);
		}
	} else {
		error = FUNC6(td, xfpustate, xfpustate_size);
		if (error == 0) {
			FUNC2(addr, FUNC8(td), sizeof(*addr));
			FUNC7(td);
		}
	}
	FUNC4();
	return (error);
}