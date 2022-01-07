
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
typedef scalar_t__ u_int ;
struct trapframe {int tf_spsr; } ;
struct thread {int td_proc; } ;
struct TYPE_4__ {int * ksi_addr; int ksi_code; void* ksi_signo; } ;
typedef TYPE_1__ ksiginfo_t ;


 int FAULT_USER ;
 scalar_t__ GDB5_BREAKPOINT ;
 scalar_t__ GDB_BREAKPOINT ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int PSR_T ;
 scalar_t__ PTRACE_BREAKPOINT ;
 void* SIGTRAP ;
 int TRAP_BRKPT ;
 int TRAP_TRACE ;
 int T_BREAKPOINT ;
 int _PHOLD (int ) ;
 int _PRELE (int ) ;
 struct thread* curthread ;
 int kgdb_trap (int ,struct trapframe*) ;
 int ksiginfo_init_trap (TYPE_1__*) ;
 int ptrace_clear_single_step (struct thread*) ;
 struct thread thread0 ;
 int trapsignal (struct thread*,TYPE_1__*) ;

__attribute__((used)) static int
gdb_trapper(u_int addr, u_int insn, struct trapframe *frame, int code)
{
 struct thread *td;
 ksiginfo_t ksi;
 int error;

 td = (curthread == ((void*)0)) ? &thread0 : curthread;

 if (insn == GDB_BREAKPOINT || insn == GDB5_BREAKPOINT) {
  if (code == FAULT_USER) {
   ksiginfo_init_trap(&ksi);
   ksi.ksi_signo = SIGTRAP;
   ksi.ksi_code = TRAP_BRKPT;
   ksi.ksi_addr = (u_int32_t *)addr;
   trapsignal(td, &ksi);
   return 0;
  }





 }

 if (code == FAULT_USER) {

  if ((frame->tf_spsr & PSR_T) == 0 &&
      insn == PTRACE_BREAKPOINT) {
   PROC_LOCK(td->td_proc);
   _PHOLD(td->td_proc);
   error = ptrace_clear_single_step(td);
   _PRELE(td->td_proc);
   PROC_UNLOCK(td->td_proc);
   if (error == 0) {
    ksiginfo_init_trap(&ksi);
    ksi.ksi_signo = SIGTRAP;
    ksi.ksi_code = TRAP_TRACE;
    ksi.ksi_addr = (u_int32_t *)addr;
    trapsignal(td, &ksi);
    return (0);
   }
  }
 }

 return 1;
}
