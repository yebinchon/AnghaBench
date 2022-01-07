
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef int rpcvers_t ;
typedef int rpcprog_t ;
typedef int rpcproc_t ;
typedef int resultproc_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int caddr_t ;


 int INITTIME ;
 int WAITTIME ;
 int rpc_broadcast_exp (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,char const*) ;

enum clnt_stat
rpc_broadcast(rpcprog_t prog, rpcvers_t vers, rpcproc_t proc, xdrproc_t xargs,
    caddr_t argsp, xdrproc_t xresults, caddr_t resultsp,
    resultproc_t eachresult, const char *nettype)
{
 enum clnt_stat dummy;

 dummy = rpc_broadcast_exp(prog, vers, proc, xargs, argsp,
  xresults, resultsp, eachresult,
  INITTIME, WAITTIME, nettype);
 return (dummy);
}
