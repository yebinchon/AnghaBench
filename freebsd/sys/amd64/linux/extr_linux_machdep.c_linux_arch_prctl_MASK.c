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
struct thread {TYPE_1__* td_frame; struct pcb* td_pcb; } ;
struct pcb {int /*<<< orphan*/  pcb_gsbase; int /*<<< orphan*/  pcb_fsbase; } ;
struct linux_arch_prctl_args {int code; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  tf_fs; int /*<<< orphan*/  tf_gs; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
#define  LINUX_ARCH_GET_FS 131 
#define  LINUX_ARCH_GET_GS 130 
#define  LINUX_ARCH_SET_FS 129 
#define  LINUX_ARCH_SET_GS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCB_FULL_IRET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_MAXUSER_ADDRESS ; 
 int /*<<< orphan*/  _ufssel ; 
 int /*<<< orphan*/  _ugssel ; 
 int /*<<< orphan*/  arch_prctl ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pcb*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct thread *td, struct linux_arch_prctl_args *args)
{
	struct pcb *pcb;
	int error;

	pcb = td->td_pcb;
	FUNC0(arch_prctl, "0x%x, %p", args->code, args->addr);

	switch (args->code) {
	case LINUX_ARCH_SET_GS:
		if (args->addr < VM_MAXUSER_ADDRESS) {
			FUNC3(pcb, PCB_FULL_IRET);
			pcb->pcb_gsbase = args->addr;
			td->td_frame->tf_gs = _ugssel;
			error = 0;
		} else
			error = EPERM;
		break;
	case LINUX_ARCH_SET_FS:
		if (args->addr < VM_MAXUSER_ADDRESS) {
			FUNC3(pcb, PCB_FULL_IRET);
			pcb->pcb_fsbase = args->addr;
			td->td_frame->tf_fs = _ufssel;
			error = 0;
		} else
			error = EPERM;
		break;
	case LINUX_ARCH_GET_FS:
		error = FUNC2(&pcb->pcb_fsbase, FUNC1(args->addr),
		    sizeof(args->addr));
		break;
	case LINUX_ARCH_GET_GS:
		error = FUNC2(&pcb->pcb_gsbase, FUNC1(args->addr),
		    sizeof(args->addr));
		break;
	default:
		error = EINVAL;
	}
	return (error);
}