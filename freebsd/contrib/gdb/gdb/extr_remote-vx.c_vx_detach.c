
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ptrace_out ;
typedef int ptrace_in ;
struct TYPE_6__ {int status; int errno_num; } ;
struct TYPE_5__ {scalar_t__ pid; } ;
typedef TYPE_1__ Rptrace ;
typedef TYPE_2__ Ptrace_return ;


 scalar_t__ PIDGET (int ) ;
 int PTRACE_DETACH ;
 int atoi (char*) ;
 int errno ;
 int error (char*) ;
 int inferior_ptid ;
 int local_hex_string (unsigned long) ;
 int memset (char*,char,int) ;
 int net_ptrace_clnt_call (int ,TYPE_1__*,TYPE_2__*) ;
 int null_ptid ;
 int perror_with_name (char*) ;
 int pop_target () ;
 int printf_unfiltered (char*,int ) ;
 char* rpcerr ;

__attribute__((used)) static void
vx_detach (char *args, int from_tty)
{
  Rptrace ptrace_in;
  Ptrace_return ptrace_out;
  int signal = 0;
  int status;

  if (args)
    error ("Argument given to VxWorks \"detach\".");

  if (from_tty)
    printf_unfiltered ("Detaching pid %s.\n",
         local_hex_string (
           (unsigned long) PIDGET (inferior_ptid)));

  if (args)
    signal = atoi (args);

  memset ((char *) &ptrace_in, '\0', sizeof (ptrace_in));
  memset ((char *) &ptrace_out, '\0', sizeof (ptrace_out));
  ptrace_in.pid = PIDGET (inferior_ptid);

  status = net_ptrace_clnt_call (PTRACE_DETACH, &ptrace_in, &ptrace_out);
  if (status == -1)
    error (rpcerr);
  if (ptrace_out.status == -1)
    {
      errno = ptrace_out.errno_num;
      perror_with_name ("Detaching VxWorks process");
    }

  inferior_ptid = null_ptid;
  pop_target ();
}
