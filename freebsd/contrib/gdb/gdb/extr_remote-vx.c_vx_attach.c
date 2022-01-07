
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ptrace_out ;
typedef int ptrace_in ;
struct TYPE_6__ {int status; int errno_num; } ;
struct TYPE_5__ {unsigned long pid; } ;
typedef TYPE_1__ Rptrace ;
typedef TYPE_2__ Ptrace_return ;


 int PTRACE_ATTACH ;
 int errno ;
 int error (char*) ;
 int error_no_arg (char*) ;
 int inferior_ptid ;
 int local_hex_string (unsigned long) ;
 int memset (char*,char,int) ;
 int net_ptrace_clnt_call (int ,TYPE_1__*,TYPE_2__*) ;
 int perror_with_name (char*) ;
 int pid_to_ptid (unsigned long) ;
 int printf_unfiltered (char*,int ) ;
 int push_target (int *) ;
 char* rpcerr ;
 unsigned long strtoul (char*,char**,int ) ;
 int vx_run_ops ;
 scalar_t__ vx_running ;
 int xfree (scalar_t__) ;

__attribute__((used)) static void
vx_attach (char *args, int from_tty)
{
  unsigned long pid;
  char *cptr = 0;
  Rptrace ptrace_in;
  Ptrace_return ptrace_out;
  int status;

  if (!args)
    error_no_arg ("process-id to attach");

  pid = strtoul (args, &cptr, 0);
  if ((cptr == args) || (*cptr != '\0'))
    error ("Invalid process-id -- give a single number in decimal or 0xhex");

  if (from_tty)
    printf_unfiltered ("Attaching pid %s.\n",
         local_hex_string ((unsigned long) pid));

  memset ((char *) &ptrace_in, '\0', sizeof (ptrace_in));
  memset ((char *) &ptrace_out, '\0', sizeof (ptrace_out));
  ptrace_in.pid = pid;

  status = net_ptrace_clnt_call (PTRACE_ATTACH, &ptrace_in, &ptrace_out);
  if (status == -1)
    error (rpcerr);
  if (ptrace_out.status == -1)
    {
      errno = ptrace_out.errno_num;
      perror_with_name ("Attaching remote process");
    }



  inferior_ptid = pid_to_ptid (pid);
  push_target (&vx_run_ops);

  if (vx_running)
    xfree (vx_running);
  vx_running = 0;
}
