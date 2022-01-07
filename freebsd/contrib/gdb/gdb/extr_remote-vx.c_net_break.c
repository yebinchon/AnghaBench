
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int ptrace_in ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_3__ {int addr; int pid; } ;
typedef TYPE_1__ Rptrace ;


 int ENOMEM ;
 int PIDGET (int ) ;
 int RPC_SUCCESS ;
 int errno ;
 int inferior_ptid ;
 int memset (char*,char,int) ;
 int net_clnt_call (int ,int ,TYPE_1__*,int ,int*) ;
 int xdr_int ;
 int xdr_rptrace ;

__attribute__((used)) static int
net_break (int addr, u_long procnum)
{
  enum clnt_stat status;
  int break_status;
  Rptrace ptrace_in;


  memset ((char *) &ptrace_in, '\0', sizeof (ptrace_in));
  break_status = 0;

  ptrace_in.addr = addr;
  ptrace_in.pid = PIDGET (inferior_ptid);

  status = net_clnt_call (procnum, xdr_rptrace, &ptrace_in, xdr_int,
     &break_status);

  if (status != RPC_SUCCESS)
    return errno;

  if (break_status == -1)
    return ENOMEM;
  return break_status;
}
