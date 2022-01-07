
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct TYPE_2__ {int md_spinlock_count; int md_saved_flags; } ;
struct thread {TYPE_1__ td_md; struct pcb* td_frame; struct pcb* td_pcb; } ;
struct pcb {int pcb_r12; int pcb_rsp; int pcb_rbx; int pcb_rip; scalar_t__ pcb_rbp; int tf_rflags; struct pcb* pcb_save; } ;
typedef int register_t ;


 int PCB_FPUINITDONE ;
 int PCB_FULL_IRET ;
 int PCB_KERNFPU ;
 int PCB_USERFPUINITDONE ;
 int PSL_I ;
 int PSL_KERNEL ;
 int PSL_T ;
 int bcopy (struct pcb*,struct pcb*,int) ;
 int clear_pcb_flags (struct pcb*,int) ;
 int cpu_max_ext_state_size ;
 scalar_t__ fork_return ;
 scalar_t__ fork_trampoline ;
 struct pcb* get_pcb_user_save_pcb (struct pcb*) ;
 struct pcb* get_pcb_user_save_td (struct thread*) ;
 int pmap_thread_init_invl_gen (struct thread*) ;
 int set_pcb_flags_raw (struct pcb*,int ) ;
 int update_pcb_bases (struct pcb*) ;

void
cpu_copy_thread(struct thread *td, struct thread *td0)
{
 struct pcb *pcb2;

 pcb2 = td->td_pcb;






 update_pcb_bases(td0->td_pcb);
 bcopy(td0->td_pcb, pcb2, sizeof(*pcb2));
 clear_pcb_flags(pcb2, PCB_FPUINITDONE | PCB_USERFPUINITDONE |
     PCB_KERNFPU);
 pcb2->pcb_save = get_pcb_user_save_pcb(pcb2);
 bcopy(get_pcb_user_save_td(td0), pcb2->pcb_save,
     cpu_max_ext_state_size);
 set_pcb_flags_raw(pcb2, PCB_FULL_IRET);




 bcopy(td0->td_frame, td->td_frame, sizeof(struct trapframe));







 td->td_frame->tf_rflags &= ~PSL_T;





 pcb2->pcb_r12 = (register_t)fork_return;
 pcb2->pcb_rbp = 0;
 pcb2->pcb_rsp = (register_t)td->td_frame - sizeof(void *);
 pcb2->pcb_rbx = (register_t)td;
 pcb2->pcb_rip = (register_t)fork_trampoline;
 td->td_md.md_spinlock_count = 1;
 td->td_md.md_saved_flags = PSL_KERNEL | PSL_I;
 pmap_thread_init_invl_gen(td);
}
