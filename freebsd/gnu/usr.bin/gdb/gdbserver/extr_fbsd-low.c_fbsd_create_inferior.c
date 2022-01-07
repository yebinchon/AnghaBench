
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PT_TRACE_ME ;
 int _exit (int) ;
 void* add_process (int) ;
 int add_thread (int,void*) ;
 int errno ;
 int execv (char*,char**) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int perror_with_name (char*) ;
 int ptrace (int ,int ,int ,int ) ;
 int setpgid (int ,int ) ;
 int stderr ;
 char* strerror (int ) ;
 int vfork () ;

__attribute__((used)) static int
fbsd_create_inferior (char *program, char **allargs)
{
  void *new_process;
  int pid;

  pid = vfork ();
  if (pid < 0)
    perror_with_name ("vfork");

  if (pid == 0)
    {
      ptrace (PT_TRACE_ME, 0, 0, 0);

      setpgid (0, 0);

      execv (program, allargs);

      fprintf (stderr, "Cannot exec %s: %s.\n", program,
        strerror (errno));
      fflush (stderr);
      _exit (0177);
    }

  new_process = add_process (pid);
  add_thread (pid, new_process);

  return pid;
}
