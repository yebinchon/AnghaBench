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
struct thread {struct pcb* td_pcb; } ;
struct pcb {int pcb_flags; scalar_t__ pcb_save; } ;
struct fpu_kern_ctx {int flags; scalar_t__ prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*) ; 
 int FPU_KERN_CTX_DUMMY ; 
 int FPU_KERN_CTX_FPUINITDONE ; 
 int FPU_KERN_CTX_INUSE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int PCB_FPUINITDONE ; 
 int PCB_FPUNOSAVE ; 
 int PCB_KERNFPU ; 
 int PCB_USERFPUINITDONE ; 
 int /*<<< orphan*/  FUNC2 (struct pcb*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pcb*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * curthread ; 
 int /*<<< orphan*/  fpcurthread ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct pcb*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pcb*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

int
FUNC12(struct thread *td, struct fpu_kern_ctx *ctx)
{
	struct pcb *pcb;

	pcb = td->td_pcb;

	if ((pcb->pcb_flags & PCB_FPUNOSAVE) != 0) {
		FUNC1(ctx == NULL, ("non-null ctx after FPU_KERN_NOCTX"));
		FUNC1(FUNC3(fpcurthread) == NULL,
		    ("non-NULL fpcurthread for PCB_FPUNOSAVE"));
		FUNC0(td);

		FUNC4(pcb,  PCB_FPUNOSAVE | PCB_FPUINITDONE);
		FUNC11();
	} else {
		FUNC1((ctx->flags & FPU_KERN_CTX_INUSE) != 0,
		    ("leaving not inuse ctx"));
		ctx->flags &= ~FPU_KERN_CTX_INUSE;

		if (FUNC9(0) &&
		    (ctx->flags & FPU_KERN_CTX_DUMMY) != 0)
			return (0);
		FUNC1((ctx->flags & FPU_KERN_CTX_DUMMY) == 0,
		    ("dummy ctx"));
		FUNC5();
		if (curthread == FUNC3(fpcurthread))
			FUNC7();
		pcb->pcb_save = ctx->prev;
	}

	if (pcb->pcb_save == FUNC8(pcb)) {
		if ((pcb->pcb_flags & PCB_USERFPUINITDONE) != 0) {
			FUNC10(pcb, PCB_FPUINITDONE);
			FUNC4(pcb, PCB_KERNFPU);
		} else
			FUNC4(pcb, PCB_FPUINITDONE | PCB_KERNFPU);
	} else {
		if ((ctx->flags & FPU_KERN_CTX_FPUINITDONE) != 0)
			FUNC10(pcb, PCB_FPUINITDONE);
		else
			FUNC4(pcb, PCB_FPUINITDONE);
		FUNC1(!FUNC2(pcb), ("unpaired fpu_kern_leave"));
	}
	FUNC6();
	return (0);
}