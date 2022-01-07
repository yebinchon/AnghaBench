
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_err {int re_errno; } ;
typedef enum tryret { ____Placeholder_tryret } tryret ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
 int TRYRET_LOCALERR ;
 int TRYRET_REMOTEERR ;
 int TRYRET_TIMEOUT ;

__attribute__((used)) static enum tryret
returncode(enum clnt_stat clntstat, struct rpc_err *rpcerr)
{

 switch (clntstat) {
 case 128:
  return (TRYRET_TIMEOUT);
 case 132:
 case 131:
 case 130:

 case 133:
 case 134:
  return (TRYRET_REMOTEERR);
 case 129:
  switch (rpcerr->re_errno) {
  case 135:
   return (TRYRET_TIMEOUT);
  case 136:
   break;
  default:
   return (TRYRET_REMOTEERR);
  }

 default:
  break;
 }
 return (TRYRET_LOCALERR);
}
