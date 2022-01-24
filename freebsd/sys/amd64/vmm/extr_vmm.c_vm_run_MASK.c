#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct vm_run {int cpuid; int /*<<< orphan*/  vm_exit; } ;
struct TYPE_8__ {int rflags; } ;
struct TYPE_7__ {int /*<<< orphan*/  vector; } ;
struct TYPE_9__ {TYPE_2__ hlt; TYPE_1__ ioapic_eoi; } ;
struct vm_exit {int exitcode; TYPE_3__ u; scalar_t__ inst_length; scalar_t__ rip; } ;
struct vm_eventinfo {int /*<<< orphan*/ * iptr; int /*<<< orphan*/ * sptr; int /*<<< orphan*/ * rptr; } ;
struct vm {int maxcpus; int /*<<< orphan*/  cookie; int /*<<< orphan*/  suspend; int /*<<< orphan*/  rendezvous_func; struct vcpu* vcpu; int /*<<< orphan*/  vmspace; int /*<<< orphan*/  suspended_cpus; int /*<<< orphan*/  active_cpus; } ;
struct vcpu {scalar_t__ nextrip; int /*<<< orphan*/  reqidle; struct vm_exit exitinfo; } ;
struct pcb {int dummy; } ;
typedef  TYPE_4__* pmap_t ;
struct TYPE_10__ {int /*<<< orphan*/  pm_active; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  PCB_FULL_IRET ; 
 struct pcb* FUNC2 (int /*<<< orphan*/ ) ; 
 int PSL_I ; 
 int /*<<< orphan*/  FUNC3 (struct vm*,int,char*,int,int) ; 
 int /*<<< orphan*/  VCPU_FROZEN ; 
 int /*<<< orphan*/  VCPU_RUNNING ; 
 int /*<<< orphan*/  VCPU_TOTAL_RUNTIME ; 
 int FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,TYPE_4__*,struct vm_eventinfo*) ; 
#define  VM_EXITCODE_HLT 139 
#define  VM_EXITCODE_INOUT 138 
#define  VM_EXITCODE_INOUT_STR 137 
#define  VM_EXITCODE_INST_EMUL 136 
#define  VM_EXITCODE_IOAPIC_EOI 135 
#define  VM_EXITCODE_MONITOR 134 
#define  VM_EXITCODE_MWAIT 133 
#define  VM_EXITCODE_PAGING 132 
#define  VM_EXITCODE_RENDEZVOUS 131 
#define  VM_EXITCODE_REQIDLE 130 
#define  VM_EXITCODE_SUSPENDED 129 
#define  VM_EXITCODE_VMINSN 128 
 int /*<<< orphan*/  FUNC5 (struct vm_exit*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int curcpu ; 
 int /*<<< orphan*/  curpcb ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct vcpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct vm*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct vm*,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct vm*,int,int,int*) ; 
 int FUNC15 (struct vm*,int,struct vm_exit*,int*) ; 
 int FUNC16 (struct vm*,int,int*) ; 
 int FUNC17 (struct vm*,int,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct vm*,int) ; 
 int FUNC19 (struct vm*,int,int*) ; 
 int FUNC20 (struct vm*,int,int*) ; 
 int /*<<< orphan*/  FUNC21 (struct vm*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct vm*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_4__* FUNC23 (int /*<<< orphan*/ ) ; 

int
FUNC24(struct vm *vm, struct vm_run *vmrun)
{
	struct vm_eventinfo evinfo;
	int error, vcpuid;
	struct vcpu *vcpu;
	struct pcb *pcb;
	uint64_t tscval;
	struct vm_exit *vme;
	bool retu, intr_disabled;
	pmap_t pmap;

	vcpuid = vmrun->cpuid;

	if (vcpuid < 0 || vcpuid >= vm->maxcpus)
		return (EINVAL);

	if (!FUNC0(vcpuid, &vm->active_cpus))
		return (EINVAL);

	if (FUNC0(vcpuid, &vm->suspended_cpus))
		return (EINVAL);

	pmap = FUNC23(vm->vmspace);
	vcpu = &vm->vcpu[vcpuid];
	vme = &vcpu->exitinfo;
	evinfo.rptr = &vm->rendezvous_func;
	evinfo.sptr = &vm->suspend;
	evinfo.iptr = &vcpu->reqidle;
restart:
	FUNC6();

	FUNC1(!FUNC0(curcpu, &pmap->pm_active),
	    ("vm_run: absurd pm_active"));

	tscval = FUNC8();

	pcb = FUNC2(curpcb);
	FUNC11(pcb, PCB_FULL_IRET);

	FUNC9(vcpu);

	FUNC12(vm, vcpuid, VCPU_RUNNING);
	error = FUNC4(vm->cookie, vcpuid, vcpu->nextrip, pmap, &evinfo);
	FUNC12(vm, vcpuid, VCPU_FROZEN);

	FUNC10(vcpu);

	FUNC22(vm, vcpuid, VCPU_TOTAL_RUNTIME, FUNC8() - tscval);

	FUNC7();

	if (error == 0) {
		retu = false;
		vcpu->nextrip = vme->rip + vme->inst_length;
		switch (vme->exitcode) {
		case VM_EXITCODE_REQIDLE:
			error = FUNC19(vm, vcpuid, &retu);
			break;
		case VM_EXITCODE_SUSPENDED:
			error = FUNC20(vm, vcpuid, &retu);
			break;
		case VM_EXITCODE_IOAPIC_EOI:
			FUNC13(vm, vcpuid,
			    vme->u.ioapic_eoi.vector);
			break;
		case VM_EXITCODE_RENDEZVOUS:
			FUNC18(vm, vcpuid);
			error = 0;
			break;
		case VM_EXITCODE_HLT:
			intr_disabled = ((vme->u.hlt.rflags & PSL_I) == 0);
			error = FUNC14(vm, vcpuid, intr_disabled, &retu);
			break;
		case VM_EXITCODE_PAGING:
			error = FUNC17(vm, vcpuid, &retu);
			break;
		case VM_EXITCODE_INST_EMUL:
			error = FUNC16(vm, vcpuid, &retu);
			break;
		case VM_EXITCODE_INOUT:
		case VM_EXITCODE_INOUT_STR:
			error = FUNC15(vm, vcpuid, vme, &retu);
			break;
		case VM_EXITCODE_MONITOR:
		case VM_EXITCODE_MWAIT:
		case VM_EXITCODE_VMINSN:
			FUNC21(vm, vcpuid);
			break;
		default:
			retu = true;	/* handled in userland */
			break;
		}
	}

	if (error == 0 && retu == false)
		goto restart;

	FUNC3(vm, vcpuid, "retu %d/%d", error, vme->exitcode);

	/* copy the exit information */
	FUNC5(vme, &vmrun->vm_exit, sizeof(struct vm_exit));
	return (error);
}