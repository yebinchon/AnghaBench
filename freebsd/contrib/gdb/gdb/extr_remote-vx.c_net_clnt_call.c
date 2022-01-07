
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef enum ptracereq { ____Placeholder_ptracereq } ptracereq ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;


 int RPC_SUCCESS ;
 int clnt_call (int ,int,int ,char*,int ,char*,int ) ;
 int clnt_perrno (int) ;
 int pClient ;
 int rpcTimeout ;

__attribute__((used)) static enum clnt_stat
net_clnt_call (enum ptracereq procNum, xdrproc_t inProc, char *in,
        xdrproc_t outProc, char *out)
{
  enum clnt_stat status;

  status = clnt_call (pClient, procNum, inProc, in, outProc, out, rpcTimeout);

  if (status != RPC_SUCCESS)
    clnt_perrno (status);

  return status;
}
