
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ptracereq { ____Placeholder_ptracereq } ptracereq ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int Rptrace ;
typedef int Ptrace_return ;


 int RPC_SUCCESS ;
 int net_clnt_call (int,int ,int *,int ,int *) ;
 int xdr_ptrace_return ;
 int xdr_rptrace ;

__attribute__((used)) static int
net_ptrace_clnt_call (enum ptracereq request, Rptrace *pPtraceIn,
        Ptrace_return *pPtraceOut)
{
  enum clnt_stat status;

  status = net_clnt_call (request, xdr_rptrace, pPtraceIn, xdr_ptrace_return,
     pPtraceOut);

  if (status != RPC_SUCCESS)
    return -1;

  return 0;
}
