
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int xdrproc_t ;
struct rpcbs_rmtcalllist {int dummy; } ;
typedef scalar_t__ rpcvers_t ;
typedef scalar_t__ rpcprog_t ;
typedef scalar_t__ rpcproc_t ;
struct TYPE_12__ {int success; int failure; int indirect; int netid; scalar_t__ proc; scalar_t__ vers; scalar_t__ prog; struct rpcbs_rmtcalllist* next; } ;
typedef TYPE_1__ rpcbs_rmtcalllist ;
typedef int int32_t ;
typedef int bool_t ;
struct TYPE_13__ {scalar_t__ x_op; } ;
typedef TYPE_2__ XDR ;


 int BYTES_PER_XDR_UNIT ;
 int FALSE ;
 scalar_t__ IXDR_GET_INT32 (int *) ;
 scalar_t__ IXDR_GET_U_INT32 (int *) ;
 int IXDR_PUT_INT32 (int *,int) ;
 int IXDR_PUT_U_INT32 (int *,scalar_t__) ;
 int RPC_MAXDATASIZE ;
 int TRUE ;
 scalar_t__ XDR_DECODE ;
 scalar_t__ XDR_ENCODE ;
 int * XDR_INLINE (TYPE_2__*,int) ;
 int xdr_int (TYPE_2__*,int*) ;
 int xdr_pointer (TYPE_2__*,char**,int,int ) ;
 int xdr_rpcproc (TYPE_2__*,scalar_t__*) ;
 int xdr_rpcprog (TYPE_2__*,scalar_t__*) ;
 int xdr_rpcvers (TYPE_2__*,scalar_t__*) ;
 int xdr_string (TYPE_2__*,int *,int ) ;

bool_t
xdr_rpcbs_rmtcalllist(XDR *xdrs, rpcbs_rmtcalllist *objp)
{
 int32_t *buf;
 struct rpcbs_rmtcalllist **pnext;

 if (xdrs->x_op == XDR_ENCODE) {
 buf = XDR_INLINE(xdrs, 6 * BYTES_PER_XDR_UNIT);
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
  if (!xdr_int(xdrs, &objp->success)) {
   return (FALSE);
  }
  if (!xdr_int(xdrs, &objp->failure)) {
   return (FALSE);
  }
  if (!xdr_int(xdrs, &objp->indirect)) {
   return (FALSE);
  }
 } else {
  IXDR_PUT_U_INT32(buf, objp->prog);
  IXDR_PUT_U_INT32(buf, objp->vers);
  IXDR_PUT_U_INT32(buf, objp->proc);
  IXDR_PUT_INT32(buf, objp->success);
  IXDR_PUT_INT32(buf, objp->failure);
  IXDR_PUT_INT32(buf, objp->indirect);
 }
 if (!xdr_string(xdrs, &objp->netid, RPC_MAXDATASIZE)) {
  return (FALSE);
 }
 pnext = &objp->next;
 if (!xdr_pointer(xdrs, (char **) pnext,
   sizeof (rpcbs_rmtcalllist),
   (xdrproc_t)xdr_rpcbs_rmtcalllist)) {
  return (FALSE);
 }
 return (TRUE);
 } else if (xdrs->x_op == XDR_DECODE) {
 buf = XDR_INLINE(xdrs, 6 * BYTES_PER_XDR_UNIT);
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
  if (!xdr_int(xdrs, &objp->success)) {
   return (FALSE);
  }
  if (!xdr_int(xdrs, &objp->failure)) {
   return (FALSE);
  }
  if (!xdr_int(xdrs, &objp->indirect)) {
   return (FALSE);
  }
 } else {
  objp->prog = (rpcprog_t)IXDR_GET_U_INT32(buf);
  objp->vers = (rpcvers_t)IXDR_GET_U_INT32(buf);
  objp->proc = (rpcproc_t)IXDR_GET_U_INT32(buf);
  objp->success = (int)IXDR_GET_INT32(buf);
  objp->failure = (int)IXDR_GET_INT32(buf);
  objp->indirect = (int)IXDR_GET_INT32(buf);
 }
 if (!xdr_string(xdrs, &objp->netid, RPC_MAXDATASIZE)) {
  return (FALSE);
 }
 if (!xdr_pointer(xdrs, (char **) pnext,
   sizeof (rpcbs_rmtcalllist),
   (xdrproc_t)xdr_rpcbs_rmtcalllist)) {
  return (FALSE);
 }
 return (TRUE);
 }
 if (!xdr_rpcprog(xdrs, &objp->prog)) {
  return (FALSE);
 }
 if (!xdr_rpcvers(xdrs, &objp->vers)) {
  return (FALSE);
 }
 if (!xdr_rpcproc(xdrs, &objp->proc)) {
  return (FALSE);
 }
 if (!xdr_int(xdrs, &objp->success)) {
  return (FALSE);
 }
 if (!xdr_int(xdrs, &objp->failure)) {
  return (FALSE);
 }
 if (!xdr_int(xdrs, &objp->indirect)) {
  return (FALSE);
 }
 if (!xdr_string(xdrs, &objp->netid, RPC_MAXDATASIZE)) {
  return (FALSE);
 }
 if (!xdr_pointer(xdrs, (char **) pnext,
   sizeof (rpcbs_rmtcalllist),
   (xdrproc_t)xdr_rpcbs_rmtcalllist)) {
  return (FALSE);
 }
 return (TRUE);
}
