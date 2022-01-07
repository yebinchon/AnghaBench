
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef scalar_t__ u_int ;
struct rpcb_rmtcallargs {int dummy; } ;
struct TYPE_2__ {scalar_t__ args_len; int args_val; } ;
struct r_rpcb_rmtcallargs {TYPE_1__ args; int (* xdr_args ) (int *,int ) ;int proc; int vers; int prog; } ;
typedef int int32_t ;
typedef int bool_t ;
typedef int XDR ;


 int BYTES_PER_XDR_UNIT ;
 int FALSE ;
 int IXDR_PUT_U_INT32 (int *,int ) ;
 int TRUE ;
 scalar_t__ XDR_GETPOS (int *) ;
 int * XDR_INLINE (int *,int) ;
 int XDR_SETPOS (int *,scalar_t__) ;
 int stub1 (int *,int ) ;
 int xdr_rpcproc (int *,int *) ;
 int xdr_rpcprog (int *,int *) ;
 int xdr_rpcvers (int *,int *) ;
 int xdr_u_int (int *,scalar_t__*) ;

bool_t
xdr_rpcb_rmtcallargs(XDR *xdrs, struct rpcb_rmtcallargs *p)
{
 struct r_rpcb_rmtcallargs *objp =
     (struct r_rpcb_rmtcallargs *)(void *)p;
 u_int lenposition, argposition, position;
 int32_t *buf;

 buf = XDR_INLINE(xdrs, 3 * BYTES_PER_XDR_UNIT);
 if (buf == ((void*)0)) {
  if (!xdr_rpcprog(xdrs, &objp->prog)) {
   return (FALSE);
  }
  if (!xdr_rpcvers(xdrs, &objp->vers)) {
   return (FALSE);
  }
  if (!xdr_rpcproc(xdrs, &objp->proc)) {
   return (FALSE);
  }
 } else {
  IXDR_PUT_U_INT32(buf, objp->prog);
  IXDR_PUT_U_INT32(buf, objp->vers);
  IXDR_PUT_U_INT32(buf, objp->proc);
 }




 lenposition = XDR_GETPOS(xdrs);
 if (! xdr_u_int(xdrs, &(objp->args.args_len))) {
  return (FALSE);
 }
 argposition = XDR_GETPOS(xdrs);
 if (! (*objp->xdr_args)(xdrs, objp->args.args_val)) {
  return (FALSE);
 }
 position = XDR_GETPOS(xdrs);
 objp->args.args_len = (u_int)((u_long)position - (u_long)argposition);
 XDR_SETPOS(xdrs, lenposition);
 if (! xdr_u_int(xdrs, &(objp->args.args_len))) {
  return (FALSE);
 }
 XDR_SETPOS(xdrs, position);
 return (TRUE);
}
