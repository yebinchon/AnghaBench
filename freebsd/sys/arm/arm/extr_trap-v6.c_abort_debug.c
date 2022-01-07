
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct trapframe {int dummy; } ;
struct thread {int dummy; } ;


 int SIGTRAP ;
 int TRAP_BRKPT ;
 int T_BREAKPOINT ;
 int T_WATCHPOINT ;
 int call_trapsignal (struct thread*,int ,int ,scalar_t__) ;
 struct thread* curthread ;
 int kdb_trap (int ,int ,struct trapframe*) ;
 int printf (char*) ;
 int userret (struct thread*,struct trapframe*) ;

__attribute__((used)) static __inline void
abort_debug(struct trapframe *tf, u_int fsr, u_int prefetch, bool usermode,
    u_int far)
{

 if (usermode) {
  struct thread *td;

  td = curthread;
  call_trapsignal(td, SIGTRAP, TRAP_BRKPT, far);
  userret(td, tf);
 } else {



  printf("No debugger in kernel.\n");

 }
}
