
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_ptrace_args {int req; int data; scalar_t__ addr; scalar_t__ pid; } ;
typedef scalar_t__ pid_t ;


 int EINVAL ;
 int PT_ATTACH ;
 int PT_CONTINUE ;
 int PT_DETACH ;
 int PT_KILL ;
 int PT_STEP ;
 int PT_SYSCALL ;
 int PT_TRACE_ME ;
 int PT_WRITE_D ;
 int PT_WRITE_I ;
 int kern_ptrace (struct thread*,int ,scalar_t__,void*,int) ;
 int linux_msg (struct thread*,char*,int) ;
 int linux_ptrace_getregs (struct thread*,scalar_t__,void*) ;
 int linux_ptrace_getregset (struct thread*,scalar_t__,scalar_t__,int) ;
 int linux_ptrace_getsiginfo (struct thread*,scalar_t__,int) ;
 int linux_ptrace_peek (struct thread*,scalar_t__,void*,void*) ;
 int linux_ptrace_peekuser (struct thread*,scalar_t__,void*,void*) ;
 int linux_ptrace_pokeuser (struct thread*,scalar_t__,void*,void*) ;
 int linux_ptrace_seize (struct thread*,scalar_t__,scalar_t__,int) ;
 int linux_ptrace_setoptions (struct thread*,scalar_t__,int) ;
 int linux_ptrace_setregs (struct thread*,scalar_t__,void*) ;
 int map_signum (int,int*) ;

int
linux_ptrace(struct thread *td, struct linux_ptrace_args *uap)
{
 void *addr;
 pid_t pid;
 int error, sig;

 pid = (pid_t)uap->pid;
 addr = (void *)uap->addr;

 switch (uap->req) {
 case 128:
  error = kern_ptrace(td, PT_TRACE_ME, 0, 0, 0);
  break;
 case 138:
 case 139:
  error = linux_ptrace_peek(td, pid, addr, (void *)uap->data);
  if (error != 0)
   return (error);



  error = linux_ptrace_peek(td, pid,
      (void *)(uap->addr + 4), (void *)(uap->data + 4));
  break;
 case 137:
  error = linux_ptrace_peekuser(td, pid, addr, (void *)uap->data);
  break;
 case 135:
  error = kern_ptrace(td, PT_WRITE_I, pid, addr, uap->data);
  break;
 case 136:
  error = kern_ptrace(td, PT_WRITE_D, pid, addr, uap->data);
  break;
 case 134:
  error = linux_ptrace_pokeuser(td, pid, addr, (void *)uap->data);
  break;
 case 145:
  error = map_signum(uap->data, &sig);
  if (error != 0)
   break;
  error = kern_ptrace(td, PT_CONTINUE, pid, (void *)1, sig);
  break;
 case 140:
  error = kern_ptrace(td, PT_KILL, pid, addr, uap->data);
  break;
 case 130:
  error = map_signum(uap->data, &sig);
  if (error != 0)
   break;
  error = kern_ptrace(td, PT_STEP, pid, (void *)1, sig);
  break;
 case 143:
  error = linux_ptrace_getregs(td, pid, (void *)uap->data);
  break;
 case 131:
  error = linux_ptrace_setregs(td, pid, (void *)uap->data);
  break;
 case 146:
  error = kern_ptrace(td, PT_ATTACH, pid, addr, uap->data);
  break;
 case 144:
  error = map_signum(uap->data, &sig);
  if (error != 0)
   break;
  error = kern_ptrace(td, PT_DETACH, pid, (void *)1, sig);
  break;
 case 129:
  error = map_signum(uap->data, &sig);
  if (error != 0)
   break;
  error = kern_ptrace(td, PT_SYSCALL, pid, (void *)1, sig);
  break;
 case 132:
  error = linux_ptrace_setoptions(td, pid, uap->data);
  break;
 case 141:
  error = linux_ptrace_getsiginfo(td, pid, uap->data);
  break;
 case 142:
  error = linux_ptrace_getregset(td, pid, uap->addr, uap->data);
  break;
 case 133:
  error = linux_ptrace_seize(td, pid, uap->addr, uap->data);
  break;
 default:
  linux_msg(td, "ptrace(%ld, ...) not implemented; "
      "returning EINVAL", uap->req);
  error = EINVAL;
  break;
 }

 return (error);
}
