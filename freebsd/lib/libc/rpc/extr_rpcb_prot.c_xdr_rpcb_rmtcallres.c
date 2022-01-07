
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpcb_rmtcallres {int dummy; } ;
struct TYPE_2__ {int results_val; int results_len; } ;
struct r_rpcb_rmtcallres {TYPE_1__ results; int (* xdr_res ) (int *,int ) ;int addr; } ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int RPC_MAXDATASIZE ;
 int stub1 (int *,int ) ;
 int xdr_string (int *,int *,int ) ;
 int xdr_u_int (int *,int *) ;

bool_t
xdr_rpcb_rmtcallres(XDR *xdrs, struct rpcb_rmtcallres *p)
{
 bool_t dummy;
 struct r_rpcb_rmtcallres *objp = (struct r_rpcb_rmtcallres *)(void *)p;

 if (!xdr_string(xdrs, &objp->addr, RPC_MAXDATASIZE)) {
  return (FALSE);
 }
 if (!xdr_u_int(xdrs, &objp->results.results_len)) {
  return (FALSE);
 }
 dummy = (*(objp->xdr_res))(xdrs, objp->results.results_val);
 return (dummy);
}
