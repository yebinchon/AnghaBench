
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int gen; } ;
struct TYPE_12__ {TYPE_2__ md_invl_gen; } ;
struct TYPE_10__ {int code; } ;
struct thread {int td_errno; TYPE_6__* td_pcb; TYPE_8__* td_frame; TYPE_3__ td_md; TYPE_1__ td_sa; int td_proc; } ;
struct TYPE_13__ {void* ksi_addr; int ksi_code; int ksi_signo; } ;
typedef TYPE_4__ ksiginfo_t ;
struct TYPE_15__ {scalar_t__ tf_rip; int tf_rflags; } ;
struct TYPE_14__ {scalar_t__ pcb_save; } ;


 int KASSERT (int,char*) ;
 int PCB_FULL_IRET ;
 int PCB_USER_FPU (TYPE_6__*) ;
 int PSL_T ;
 int SIGTRAP ;
 int TRAPF_USERMODE (TYPE_8__*) ;
 int TRAP_TRACE ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 scalar_t__ __predict_false (int) ;
 int amd64_syscall_ret_flush_l1d_inline (int ) ;
 scalar_t__ get_pcb_user_save_td (struct thread*) ;
 int ksiginfo_init_trap (TYPE_4__*) ;
 int panic (char*) ;
 int pmap_not_in_di () ;
 int set_pcb_flags (TYPE_6__*,int ) ;
 int syscallenter (struct thread*) ;
 int syscallname (int ,int ) ;
 int syscallret (struct thread*) ;
 int trapsignal (struct thread*,TYPE_4__*) ;

void
amd64_syscall(struct thread *td, int traced)
{
 ksiginfo_t ksi;







 syscallenter(td);




 if (__predict_false(traced)) {
  td->td_frame->tf_rflags &= ~PSL_T;
  ksiginfo_init_trap(&ksi);
  ksi.ksi_signo = SIGTRAP;
  ksi.ksi_code = TRAP_TRACE;
  ksi.ksi_addr = (void *)td->td_frame->tf_rip;
  trapsignal(td, &ksi);
 }

 KASSERT(PCB_USER_FPU(td->td_pcb),
     ("System call %s returning with kernel FPU ctx leaked",
      syscallname(td->td_proc, td->td_sa.code)));
 KASSERT(td->td_pcb->pcb_save == get_pcb_user_save_td(td),
     ("System call %s returning with mangled pcb_save",
      syscallname(td->td_proc, td->td_sa.code)));
 KASSERT(pmap_not_in_di(),
     ("System call %s returning with leaked invl_gen %lu",
     syscallname(td->td_proc, td->td_sa.code),
     td->td_md.md_invl_gen.gen));

 syscallret(td);
 if (__predict_false(td->td_frame->tf_rip >= VM_MAXUSER_ADDRESS))
  set_pcb_flags(td->td_pcb, PCB_FULL_IRET);

 amd64_syscall_ret_flush_l1d_inline(td->td_errno);
}
