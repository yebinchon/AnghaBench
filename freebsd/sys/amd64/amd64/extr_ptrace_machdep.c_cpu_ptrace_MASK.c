#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_2__* td_proc; struct pcb* td_pcb; } ;
struct pcb {int /*<<< orphan*/  pcb_gsbase; int /*<<< orphan*/  pcb_fsbase; } ;
typedef  int /*<<< orphan*/  rv ;
typedef  int /*<<< orphan*/  register_t ;
struct TYPE_4__ {TYPE_1__* p_sysent; } ;
struct TYPE_3__ {int /*<<< orphan*/  sv_maxuser; } ;

/* Variables and functions */
 int EINVAL ; 
 int PT_FIRSTMACH ; 
#define  PT_GETFSBASE 136 
#define  PT_GETGSBASE 135 
#define  PT_GETXSTATE 134 
#define  PT_GETXSTATE_INFO 133 
#define  PT_GETXSTATE_OLD 132 
#define  PT_SETFSBASE 131 
#define  PT_SETGSBASE 130 
#define  PT_SETXSTATE 129 
#define  PT_SETXSTATE_OLD 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SV_ILP32 ; 
 int FUNC1 (void*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC3 (struct thread*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct thread*,int,void*,int) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC6 (struct pcb*) ; 

int
FUNC7(struct thread *td, int req, void *addr, int data)
{
	register_t *r, rv;
	struct pcb *pcb;
	int error;

#ifdef COMPAT_FREEBSD32
	if (SV_CURPROC_FLAG(SV_ILP32))
		return (cpu32_ptrace(td, req, addr, data));
#endif

	/* Support old values of PT_GETXSTATE_OLD and PT_SETXSTATE_OLD. */
	if (req == PT_FIRSTMACH + 0)
		req = PT_GETXSTATE_OLD;
	if (req == PT_FIRSTMACH + 1)
		req = PT_SETXSTATE_OLD;

	switch (req) {
	case PT_GETXSTATE_OLD:
	case PT_SETXSTATE_OLD:
	case PT_GETXSTATE_INFO:
	case PT_GETXSTATE:
	case PT_SETXSTATE:
		error = FUNC5(td, req, addr, data);
		break;

	case PT_GETFSBASE:
	case PT_GETGSBASE:
		pcb = td->td_pcb;
		if (td == curthread)
			FUNC6(pcb);
		r = req == PT_GETFSBASE ? &pcb->pcb_fsbase : &pcb->pcb_gsbase;
		error = FUNC2(r, addr, sizeof(*r));
		break;

	case PT_SETFSBASE:
	case PT_SETGSBASE:
		error = FUNC1(addr, &rv, sizeof(rv));
		if (error != 0)
			break;
		if (rv >= td->td_proc->p_sysent->sv_maxuser) {
			error = EINVAL;
			break;
		}
		FUNC4(td, req, rv);
		break;

	default:
		error = EINVAL;
		break;
	}

	return (error);
}