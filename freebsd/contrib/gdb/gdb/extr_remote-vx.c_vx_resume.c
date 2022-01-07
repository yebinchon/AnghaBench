
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ptrace_out ;
typedef int ptrace_in ;
typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_6__ {int status; int errno_num; } ;
struct TYPE_5__ {int addr; int pid; } ;
typedef TYPE_1__ Rptrace ;
typedef TYPE_2__ Ptrace_return ;
typedef int CORE_ADDR ;


 int PC_REGNUM ;
 int PIDGET (int ) ;
 int PTRACE_CONT ;
 int errno ;
 int error (char*) ;
 int inferior_ptid ;
 int memset (char*,char,int) ;
 int minus_one_ptid ;
 int net_ptrace_clnt_call (int ,TYPE_1__*,TYPE_2__*) ;
 int net_step () ;
 int perror_with_name (char*) ;
 scalar_t__ ptid_equal (int ,int ) ;
 int read_register (int ) ;
 char* rpcerr ;
 int stop_pc ;
 int stop_signal ;

__attribute__((used)) static void
vx_resume (ptid_t ptid, int step, enum target_signal siggnal)
{
  int status;
  Rptrace ptrace_in;
  Ptrace_return ptrace_out;
  CORE_ADDR cont_addr;

  if (ptid_equal (ptid, minus_one_ptid))
    ptid = inferior_ptid;

  if (siggnal != 0 && siggnal != stop_signal)
    error ("Cannot send signals to VxWorks processes");
  cont_addr = read_register (PC_REGNUM);
  if (cont_addr == stop_pc)
    cont_addr = 1;

  memset ((char *) &ptrace_in, '\0', sizeof (ptrace_in));
  memset ((char *) &ptrace_out, '\0', sizeof (ptrace_out));

  ptrace_in.pid = PIDGET (ptid);
  ptrace_in.addr = cont_addr;

  if (step)
    status = net_step ();
  else
    status = net_ptrace_clnt_call (PTRACE_CONT, &ptrace_in, &ptrace_out);

  if (status)
    error (rpcerr);
  if (ptrace_out.status == -1)
    {
      errno = ptrace_out.errno_num;
      perror_with_name ("Resuming remote process");
    }
}
