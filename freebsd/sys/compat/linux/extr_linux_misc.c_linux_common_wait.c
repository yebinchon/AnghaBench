
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct __wrusage {int dummy; } ;
struct TYPE_3__ {int si_pid; } ;
typedef TYPE_1__ siginfo_t ;
typedef int idtype_t ;
typedef scalar_t__ id_t ;


 int P_ALL ;
 int P_PGID ;
 int P_PID ;
 scalar_t__ SIGTRAP ;
 int WAIT_ANY ;
 int WEXITED ;
 scalar_t__ WIFCONTINUED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 scalar_t__ WIFSTOPPED (int) ;
 scalar_t__ WSTOPSIG (int) ;
 scalar_t__ WTERMSIG (int) ;
 int WTRAPPED ;
 int bsd_to_linux_signal (scalar_t__) ;
 int copyout (int*,int*,int) ;
 int kern_wait6 (struct thread*,int ,scalar_t__,int*,int,struct __wrusage*,TYPE_1__*) ;
 int linux_ptrace_status (struct thread*,int ,int) ;

__attribute__((used)) static int
linux_common_wait(struct thread *td, int pid, int *statusp,
    int options, struct __wrusage *wrup)
{
 siginfo_t siginfo;
 idtype_t idtype;
 id_t id;
 int error, status, tmpstat;

 if (pid == WAIT_ANY) {
  idtype = P_ALL;
  id = 0;
 } else if (pid < 0) {
  idtype = P_PGID;
  id = (id_t)-pid;
 } else {
  idtype = P_PID;
  id = (id_t)pid;
 }





 options |= WEXITED | WTRAPPED;
 error = kern_wait6(td, idtype, id, &status, options, wrup, &siginfo);
 if (error)
  return (error);

 if (statusp) {
  tmpstat = status & 0xffff;
  if (WIFSIGNALED(tmpstat)) {
   tmpstat = (tmpstat & 0xffffff80) |
       bsd_to_linux_signal(WTERMSIG(tmpstat));
  } else if (WIFSTOPPED(tmpstat)) {
   tmpstat = (tmpstat & 0xffff00ff) |
       (bsd_to_linux_signal(WSTOPSIG(tmpstat)) << 8);

   if (WSTOPSIG(status) == SIGTRAP) {
    tmpstat = linux_ptrace_status(td,
        siginfo.si_pid, tmpstat);
   }

  } else if (WIFCONTINUED(tmpstat)) {
   tmpstat = 0xffff;
  }
  error = copyout(&tmpstat, statusp, sizeof(int));
 }

 return (error);
}
