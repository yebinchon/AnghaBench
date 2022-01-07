
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcb_state {int efer; int cr4; int cr0; int cr3; } ;
struct vmcb {struct vmcb_state state; } ;
struct vm_guest_paging {int paging_mode; int cpu_mode; int cpl; int cr3; } ;


 int svm_cpl (struct vmcb_state*) ;
 int svm_paging_mode (int ,int ,int ) ;
 int svm_vcpu_mode (struct vmcb*) ;

__attribute__((used)) static void
svm_paging_info(struct vmcb *vmcb, struct vm_guest_paging *paging)
{
 struct vmcb_state *state;

 state = &vmcb->state;
 paging->cr3 = state->cr3;
 paging->cpl = svm_cpl(state);
 paging->cpu_mode = svm_vcpu_mode(vmcb);
 paging->paging_mode = svm_paging_mode(state->cr0, state->cr4,
     state->efer);
}
