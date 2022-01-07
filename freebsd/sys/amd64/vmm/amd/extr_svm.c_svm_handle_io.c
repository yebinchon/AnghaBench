
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct vmcb_state {int cr0; int rflags; scalar_t__ rax; } ;
struct vmcb_ctrl {int exitinfo1; } ;
struct vm_inout_str {int addrsize; int count; int index; int cr0; int rflags; int paging; } ;
struct TYPE_3__ {int in; int string; int rep; int bytes; scalar_t__ eax; scalar_t__ port; } ;
struct TYPE_4__ {TYPE_1__ inout; struct vm_inout_str inout_str; } ;
struct vm_exit {TYPE_2__ u; int exitcode; } ;
struct svm_softc {int dummy; } ;
struct svm_regctx {int dummy; } ;


 int BIT (int) ;
 int UNHANDLED ;
 int VM_EXITCODE_INOUT ;
 int VM_EXITCODE_INOUT_STR ;
 int decode_assist () ;
 struct svm_regctx* svm_get_guest_regctx (struct svm_softc*,int) ;
 int svm_get_vmcb (struct svm_softc*,int) ;
 struct vmcb_ctrl* svm_get_vmcb_ctrl (struct svm_softc*,int) ;
 struct vmcb_state* svm_get_vmcb_state (struct svm_softc*,int) ;
 int svm_inout_str_addrsize (int) ;
 int svm_inout_str_count (struct svm_regctx*,int) ;
 int svm_inout_str_index (struct svm_regctx*,int) ;
 int svm_inout_str_seginfo (struct svm_softc*,int,int,int,struct vm_inout_str*) ;
 int svm_paging_info (int ,int *) ;

__attribute__((used)) static int
svm_handle_io(struct svm_softc *svm_sc, int vcpu, struct vm_exit *vmexit)
{
 struct vmcb_ctrl *ctrl;
 struct vmcb_state *state;
 struct svm_regctx *regs;
 struct vm_inout_str *vis;
 uint64_t info1;
 int inout_string;

 state = svm_get_vmcb_state(svm_sc, vcpu);
 ctrl = svm_get_vmcb_ctrl(svm_sc, vcpu);
 regs = svm_get_guest_regctx(svm_sc, vcpu);

 info1 = ctrl->exitinfo1;
 inout_string = info1 & BIT(2) ? 1 : 0;
 if (inout_string && !decode_assist())
  return (UNHANDLED);

 vmexit->exitcode = VM_EXITCODE_INOUT;
 vmexit->u.inout.in = (info1 & BIT(0)) ? 1 : 0;
 vmexit->u.inout.string = inout_string;
 vmexit->u.inout.rep = (info1 & BIT(3)) ? 1 : 0;
 vmexit->u.inout.bytes = (info1 >> 4) & 0x7;
 vmexit->u.inout.port = (uint16_t)(info1 >> 16);
 vmexit->u.inout.eax = (uint32_t)(state->rax);

 if (inout_string) {
  vmexit->exitcode = VM_EXITCODE_INOUT_STR;
  vis = &vmexit->u.inout_str;
  svm_paging_info(svm_get_vmcb(svm_sc, vcpu), &vis->paging);
  vis->rflags = state->rflags;
  vis->cr0 = state->cr0;
  vis->index = svm_inout_str_index(regs, vmexit->u.inout.in);
  vis->count = svm_inout_str_count(regs, vmexit->u.inout.rep);
  vis->addrsize = svm_inout_str_addrsize(info1);
  svm_inout_str_seginfo(svm_sc, vcpu, info1,
      vmexit->u.inout.in, vis);
 }

 return (UNHANDLED);
}
