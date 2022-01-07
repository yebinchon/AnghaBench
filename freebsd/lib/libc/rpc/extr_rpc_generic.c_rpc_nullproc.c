
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct timeval {int member_0; int member_1; } ;
typedef int CLIENT ;


 int NULLPROC ;
 scalar_t__ RPC_SUCCESS ;
 scalar_t__ clnt_call (int *,int ,int ,int *,int ,int *,struct timeval) ;
 scalar_t__ xdr_void ;

void *
rpc_nullproc(CLIENT *clnt)
{
 struct timeval TIMEOUT = {25, 0};

 if (clnt_call(clnt, NULLPROC, (xdrproc_t) xdr_void, ((void*)0),
  (xdrproc_t) xdr_void, ((void*)0), TIMEOUT) != RPC_SUCCESS) {
  return (((void*)0));
 }
 return ((void *) clnt);
}
