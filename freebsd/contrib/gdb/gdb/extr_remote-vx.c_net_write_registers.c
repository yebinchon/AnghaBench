
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int ptrace_out ;
typedef int ptrace_in ;
typedef scalar_t__ caddr_t ;
struct TYPE_10__ {char* bytes; int len; } ;
struct TYPE_9__ {int status; int errno_num; } ;
struct TYPE_7__ {scalar_t__ more_data; int ttype; } ;
struct TYPE_8__ {TYPE_1__ info; int pid; } ;
typedef TYPE_2__ Rptrace ;
typedef TYPE_3__ Ptrace_return ;
typedef TYPE_4__ C_bytes ;


 int DATA ;
 int PIDGET (int ) ;
 scalar_t__ PTRACE_SETREGS ;
 int errno ;
 int error (int ) ;
 int inferior_ptid ;
 int memset (char*,char,int) ;
 int net_ptrace_clnt_call (scalar_t__,TYPE_2__*,TYPE_3__*) ;
 int perror_with_name (char*) ;
 int rpcerr ;
 int sprintf (char*,char*,char*) ;

void
net_write_registers (char *reg_buf, int len, u_long procnum)
{
  int status;
  Rptrace ptrace_in;
  Ptrace_return ptrace_out;
  C_bytes in_data;
  char message[100];

  memset ((char *) &ptrace_in, '\0', sizeof (ptrace_in));
  memset ((char *) &ptrace_out, '\0', sizeof (ptrace_out));



  in_data.bytes = reg_buf;
  in_data.len = len;

  ptrace_in.pid = PIDGET (inferior_ptid);
  ptrace_in.info.ttype = DATA;
  ptrace_in.info.more_data = (caddr_t) & in_data;



  status = net_ptrace_clnt_call (procnum, &ptrace_in, &ptrace_out);
  if (status)
    error (rpcerr);
  if (ptrace_out.status == -1)
    {
      errno = ptrace_out.errno_num;
      sprintf (message, "writing %s registers", (procnum == PTRACE_SETREGS)
        ? "general-purpose"
        : "floating-point");
      perror_with_name (message);
    }
}
