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
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct vmcb_state {int /*<<< orphan*/  cr0; int /*<<< orphan*/  rflags; scalar_t__ rax; } ;
struct vmcb_ctrl {int exitinfo1; } ;
struct vm_inout_str {int /*<<< orphan*/  addrsize; int /*<<< orphan*/  count; int /*<<< orphan*/  index; int /*<<< orphan*/  cr0; int /*<<< orphan*/  rflags; int /*<<< orphan*/  paging; } ;
struct TYPE_3__ {int in; int string; int rep; int bytes; scalar_t__ eax; scalar_t__ port; } ;
struct TYPE_4__ {TYPE_1__ inout; struct vm_inout_str inout_str; } ;
struct vm_exit {TYPE_2__ u; int /*<<< orphan*/  exitcode; } ;
struct svm_softc {int dummy; } ;
struct svm_regctx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int UNHANDLED ; 
 int /*<<< orphan*/  VM_EXITCODE_INOUT ; 
 int /*<<< orphan*/  VM_EXITCODE_INOUT_STR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct svm_regctx* FUNC2 (struct svm_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct svm_softc*,int) ; 
 struct vmcb_ctrl* FUNC4 (struct svm_softc*,int) ; 
 struct vmcb_state* FUNC5 (struct svm_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct svm_regctx*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct svm_regctx*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct svm_softc*,int,int,int,struct vm_inout_str*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct svm_softc *svm_sc, int vcpu, struct vm_exit *vmexit)
{
	struct vmcb_ctrl *ctrl;
	struct vmcb_state *state;
	struct svm_regctx *regs;
	struct vm_inout_str *vis;
	uint64_t info1;
	int inout_string;

	state = FUNC5(svm_sc, vcpu);
	ctrl  = FUNC4(svm_sc, vcpu);
	regs  = FUNC2(svm_sc, vcpu);

	info1 = ctrl->exitinfo1;
	inout_string = info1 & FUNC0(2) ? 1 : 0;

	/*
	 * The effective segment number in EXITINFO1[12:10] is populated
	 * only if the processor has the DecodeAssist capability.
	 *
	 * XXX this is not specified explicitly in APMv2 but can be verified
	 * empirically.
	 */
	if (inout_string && !FUNC1())
		return (UNHANDLED);

	vmexit->exitcode 	= VM_EXITCODE_INOUT;
	vmexit->u.inout.in 	= (info1 & FUNC0(0)) ? 1 : 0;
	vmexit->u.inout.string 	= inout_string;
	vmexit->u.inout.rep 	= (info1 & FUNC0(3)) ? 1 : 0;
	vmexit->u.inout.bytes 	= (info1 >> 4) & 0x7;
	vmexit->u.inout.port 	= (uint16_t)(info1 >> 16);
	vmexit->u.inout.eax 	= (uint32_t)(state->rax);

	if (inout_string) {
		vmexit->exitcode = VM_EXITCODE_INOUT_STR;
		vis = &vmexit->u.inout_str;
		FUNC10(FUNC3(svm_sc, vcpu), &vis->paging);
		vis->rflags = state->rflags;
		vis->cr0 = state->cr0;
		vis->index = FUNC8(regs, vmexit->u.inout.in);
		vis->count = FUNC7(regs, vmexit->u.inout.rep);
		vis->addrsize = FUNC6(info1);
		FUNC9(svm_sc, vcpu, info1,
		    vmexit->u.inout.in, vis);
	}

	return (UNHANDLED);
}