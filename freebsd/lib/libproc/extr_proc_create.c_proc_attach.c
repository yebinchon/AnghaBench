
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_handle {int status; } ;
typedef scalar_t__ pid_t ;


 int DPRINTF (char*,scalar_t__) ;
 int DPRINTFX (char*,scalar_t__,int) ;
 int EINVAL ;
 int ENOENT ;
 int EV_CURRENT ;
 scalar_t__ EV_NONE ;
 int PATTACH_NOSTOP ;
 int PATTACH_RDONLY ;
 int PS_RUN ;
 int PS_STOP ;
 int PT_ATTACH ;
 int WIFSTOPPED (int) ;
 int WUNTRACED ;
 scalar_t__ elf_version (int ) ;
 int errno ;
 scalar_t__ getpid () ;
 int proc_continue (struct proc_handle*) ;
 int proc_free (struct proc_handle*) ;
 int proc_getpid (struct proc_handle*) ;
 int proc_init (scalar_t__,int,int ,struct proc_handle**) ;
 scalar_t__ ptrace (int ,int ,int ,int ) ;
 int waitpid (scalar_t__,int*,int ) ;

int
proc_attach(pid_t pid, int flags, struct proc_handle **pphdl)
{
 struct proc_handle *phdl;
 int error, status;

 if (pid == 0 || (pid == getpid() && (flags & PATTACH_RDONLY) == 0))
  return (EINVAL);
 if (elf_version(EV_CURRENT) == EV_NONE)
  return (ENOENT);





 error = proc_init(pid, flags, PS_RUN, &phdl);
 if (error != 0)
  goto out;

 if ((flags & PATTACH_RDONLY) == 0) {
  if (ptrace(PT_ATTACH, proc_getpid(phdl), 0, 0) != 0) {
   error = errno;
   DPRINTF("ERROR: cannot ptrace child process %d", pid);
   goto out;
  }


  if (waitpid(pid, &status, WUNTRACED) == -1) {
   error = errno;
   DPRINTF("ERROR: child process %d didn't stop as expected", pid);
   goto out;
  }


  if (!WIFSTOPPED(status))
   DPRINTFX("ERROR: child process %d status 0x%x", pid, status);
  else
   phdl->status = PS_STOP;

  if ((flags & PATTACH_NOSTOP) != 0)
   proc_continue(phdl);
 }

out:
 if (error != 0 && phdl != ((void*)0)) {
  proc_free(phdl);
  phdl = ((void*)0);
 }
 *pphdl = phdl;
 return (error);
}
