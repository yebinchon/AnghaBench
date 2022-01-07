
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {struct pcb* td_pcb; } ;
struct TYPE_2__ {int en_mxcsr; } ;
struct savefpu {TYPE_1__ sv_env; } ;
struct pcb {int dummy; } ;


 int PCB_FPUINITDONE ;
 int PCB_USERFPUINITDONE ;
 scalar_t__ PCB_USER_FPU (struct pcb*) ;
 struct thread* PCPU_GET (int ) ;
 int bcopy (struct savefpu*,int ,int) ;
 int cpu_mxcsr_mask ;
 int critical_enter () ;
 int critical_exit () ;
 int fpcurthread ;
 int fpurestore (int ) ;
 int fpusetxstate (struct thread*,char*,size_t) ;
 int fpuuserinited (struct thread*) ;
 int get_pcb_user_save_td (struct thread*) ;
 int set_pcb_flags (struct pcb*,int) ;

int
fpusetregs(struct thread *td, struct savefpu *addr, char *xfpustate,
    size_t xfpustate_size)
{
 struct pcb *pcb;
 int error;

 addr->sv_env.en_mxcsr &= cpu_mxcsr_mask;
 pcb = td->td_pcb;
 error = 0;
 critical_enter();
 if (td == PCPU_GET(fpcurthread) && PCB_USER_FPU(pcb)) {
  error = fpusetxstate(td, xfpustate, xfpustate_size);
  if (error == 0) {
   bcopy(addr, get_pcb_user_save_td(td), sizeof(*addr));
   fpurestore(get_pcb_user_save_td(td));
   set_pcb_flags(pcb, PCB_FPUINITDONE |
       PCB_USERFPUINITDONE);
  }
 } else {
  error = fpusetxstate(td, xfpustate, xfpustate_size);
  if (error == 0) {
   bcopy(addr, get_pcb_user_save_td(td), sizeof(*addr));
   fpuuserinited(td);
  }
 }
 critical_exit();
 return (error);
}
