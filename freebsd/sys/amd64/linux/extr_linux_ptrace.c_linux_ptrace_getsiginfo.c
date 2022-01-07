
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_2__ {int si_signo; } ;
struct ptrace_lwpinfo {int pl_flags; TYPE_1__ pl_siginfo; } ;
typedef int pid_t ;
typedef int lwpinfo ;
typedef scalar_t__ l_ulong ;
typedef int l_siginfo_t ;
typedef int l_siginfo ;


 int EINVAL ;
 int PL_FLAG_SI ;
 int PT_LWPINFO ;
 int bsd_to_linux_signal (int ) ;
 int copyout (int *,void*,int) ;
 int kern_ptrace (struct thread*,int ,int ,struct ptrace_lwpinfo*,int) ;
 int linux_msg (struct thread*,char*,int) ;
 int siginfo_to_lsiginfo (TYPE_1__*,int *,int) ;

__attribute__((used)) static int
linux_ptrace_getsiginfo(struct thread *td, pid_t pid, l_ulong data)
{
 struct ptrace_lwpinfo lwpinfo;
 l_siginfo_t l_siginfo;
 int error, sig;

 error = kern_ptrace(td, PT_LWPINFO, pid, &lwpinfo, sizeof(lwpinfo));
 if (error != 0) {
  linux_msg(td, "PT_LWPINFO failed with error %d", error);
  return (error);
 }

 if ((lwpinfo.pl_flags & PL_FLAG_SI) == 0) {
  error = EINVAL;
  linux_msg(td, "no PL_FLAG_SI, returning %d", error);
  return (error);
 }

 sig = bsd_to_linux_signal(lwpinfo.pl_siginfo.si_signo);
 siginfo_to_lsiginfo(&lwpinfo.pl_siginfo, &l_siginfo, sig);
 error = copyout(&l_siginfo, (void *)data, sizeof(l_siginfo));
 return (error);
}
