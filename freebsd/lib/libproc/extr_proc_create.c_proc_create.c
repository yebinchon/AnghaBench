
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_handle {int status; } ;
typedef int (* proc_child_func ) (void*) ;
typedef int pid_t ;


 int DPRINTF (char*,int) ;
 int DPRINTFX (char*,int,int) ;
 int ENOENT ;
 int EV_CURRENT ;
 scalar_t__ EV_NONE ;
 int PS_IDLE ;
 int PS_STOP ;
 int PT_TRACE_ME ;
 int WIFSTOPPED (int) ;
 int WUNTRACED ;
 int _exit (int) ;
 scalar_t__ elf_version (int ) ;
 char* const* environ ;
 int errno ;
 int execvp (char const*,char* const*) ;
 int fork () ;
 int proc_free (struct proc_handle*) ;
 int proc_init (int,int ,int ,struct proc_handle**) ;
 scalar_t__ ptrace (int ,int ,int ,int ) ;
 int stub1 (void*) ;
 int waitpid (int,int*,int ) ;

int
proc_create(const char *file, char * const *argv, char * const *envp,
    proc_child_func *pcf, void *child_arg, struct proc_handle **pphdl)
{
 struct proc_handle *phdl;
 int error, status;
 pid_t pid;

 if (elf_version(EV_CURRENT) == EV_NONE)
  return (ENOENT);

 error = 0;
 phdl = ((void*)0);

 if ((pid = fork()) == -1)
  error = errno;
 else if (pid == 0) {

  if (ptrace(PT_TRACE_ME, 0, 0, 0) != 0)
   _exit(1);

  if (pcf != ((void*)0))
   (*pcf)(child_arg);

  if (envp != ((void*)0))
   environ = envp;

  execvp(file, argv);

  _exit(2);

 } else {

  if (waitpid(pid, &status, WUNTRACED) == -1) {
   error = errno;
   DPRINTF("ERROR: child process %d didn't stop as expected", pid);
   goto bad;
  }


  if (!WIFSTOPPED(status)) {
   error = ENOENT;
   DPRINTFX("ERROR: child process %d status 0x%x", pid, status);
   goto bad;
  }


  error = proc_init(pid, 0, PS_IDLE, &phdl);
  if (error == 0)
   phdl->status = PS_STOP;

bad:
  if (error != 0 && phdl != ((void*)0)) {
   proc_free(phdl);
   phdl = ((void*)0);
  }
 }
 *pphdl = phdl;
 return (error);
}
