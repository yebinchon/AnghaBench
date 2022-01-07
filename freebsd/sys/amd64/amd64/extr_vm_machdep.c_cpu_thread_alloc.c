
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xstate_hdr {int xstate_bv; } ;
struct trapframe {int dummy; } ;
struct TYPE_2__ {scalar_t__ md_stack_base; } ;
struct thread {TYPE_1__ td_md; struct trapframe* td_frame; struct pcb* td_pcb; } ;
struct pcb {scalar_t__ pcb_save; } ;


 int bzero (struct xstate_hdr*,int) ;
 struct pcb* get_pcb_td (struct thread*) ;
 scalar_t__ get_pcb_user_save_pcb (struct pcb*) ;
 int set_top_of_stack_td (struct thread*) ;
 scalar_t__ use_xsave ;
 int xsave_mask ;

void
cpu_thread_alloc(struct thread *td)
{
 struct pcb *pcb;
 struct xstate_hdr *xhdr;

 set_top_of_stack_td(td);
 td->td_pcb = pcb = get_pcb_td(td);
 td->td_frame = (struct trapframe *)td->td_md.md_stack_base - 1;
 pcb->pcb_save = get_pcb_user_save_pcb(pcb);
 if (use_xsave) {
  xhdr = (struct xstate_hdr *)(pcb->pcb_save + 1);
  bzero(xhdr, sizeof(*xhdr));
  xhdr->xstate_bv = xsave_mask;
 }
}
