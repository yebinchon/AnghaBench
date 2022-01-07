
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct pcb* td_pcb; } ;
struct pcb {int pcb_flags; scalar_t__ pcb_save; } ;
struct fpu_kern_ctx {int flags; scalar_t__ prev; } ;


 int CRITICAL_ASSERT (struct thread*) ;
 int FPU_KERN_CTX_DUMMY ;
 int FPU_KERN_CTX_FPUINITDONE ;
 int FPU_KERN_CTX_INUSE ;
 int KASSERT (int,char*) ;
 int PCB_FPUINITDONE ;
 int PCB_FPUNOSAVE ;
 int PCB_KERNFPU ;
 int PCB_USERFPUINITDONE ;
 int PCB_USER_FPU (struct pcb*) ;
 int * PCPU_GET (int ) ;
 int clear_pcb_flags (struct pcb*,int) ;
 int critical_enter () ;
 int critical_exit () ;
 int * curthread ;
 int fpcurthread ;
 int fpudrop () ;
 scalar_t__ get_pcb_user_save_pcb (struct pcb*) ;
 scalar_t__ is_fpu_kern_thread (int ) ;
 int set_pcb_flags (struct pcb*,int) ;
 int start_emulating () ;

int
fpu_kern_leave(struct thread *td, struct fpu_kern_ctx *ctx)
{
 struct pcb *pcb;

 pcb = td->td_pcb;

 if ((pcb->pcb_flags & PCB_FPUNOSAVE) != 0) {
  KASSERT(ctx == ((void*)0), ("non-null ctx after FPU_KERN_NOCTX"));
  KASSERT(PCPU_GET(fpcurthread) == ((void*)0),
      ("non-NULL fpcurthread for PCB_FPUNOSAVE"));
  CRITICAL_ASSERT(td);

  clear_pcb_flags(pcb, PCB_FPUNOSAVE | PCB_FPUINITDONE);
  start_emulating();
 } else {
  KASSERT((ctx->flags & FPU_KERN_CTX_INUSE) != 0,
      ("leaving not inuse ctx"));
  ctx->flags &= ~FPU_KERN_CTX_INUSE;

  if (is_fpu_kern_thread(0) &&
      (ctx->flags & FPU_KERN_CTX_DUMMY) != 0)
   return (0);
  KASSERT((ctx->flags & FPU_KERN_CTX_DUMMY) == 0,
      ("dummy ctx"));
  critical_enter();
  if (curthread == PCPU_GET(fpcurthread))
   fpudrop();
  pcb->pcb_save = ctx->prev;
 }

 if (pcb->pcb_save == get_pcb_user_save_pcb(pcb)) {
  if ((pcb->pcb_flags & PCB_USERFPUINITDONE) != 0) {
   set_pcb_flags(pcb, PCB_FPUINITDONE);
   clear_pcb_flags(pcb, PCB_KERNFPU);
  } else
   clear_pcb_flags(pcb, PCB_FPUINITDONE | PCB_KERNFPU);
 } else {
  if ((ctx->flags & FPU_KERN_CTX_FPUINITDONE) != 0)
   set_pcb_flags(pcb, PCB_FPUINITDONE);
  else
   clear_pcb_flags(pcb, PCB_FPUINITDONE);
  KASSERT(!PCB_USER_FPU(pcb), ("unpaired fpu_kern_leave"));
 }
 critical_exit();
 return (0);
}
