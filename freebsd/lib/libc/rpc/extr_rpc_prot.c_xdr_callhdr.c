
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int cb_vers; int cb_prog; int cb_rpcvers; } ;
struct rpc_msg {int rm_direction; TYPE_1__ rm_call; int rm_xid; } ;
typedef int enum_t ;
typedef enum msg_type { ____Placeholder_msg_type } msg_type ;
typedef scalar_t__ bool_t ;
struct TYPE_9__ {scalar_t__ x_op; } ;
typedef TYPE_2__ XDR ;


 int CALL ;
 scalar_t__ FALSE ;
 int RPC_MSG_VERSION ;
 scalar_t__ XDR_ENCODE ;
 int assert (int ) ;
 scalar_t__ xdr_enum (TYPE_2__*,int *) ;
 scalar_t__ xdr_rpcprog (TYPE_2__*,int *) ;
 scalar_t__ xdr_rpcvers (TYPE_2__*,int *) ;
 scalar_t__ xdr_u_int32_t (TYPE_2__*,int *) ;

bool_t
xdr_callhdr(XDR *xdrs, struct rpc_msg *cmsg)
{
 enum msg_type *prm_direction;

 assert(xdrs != ((void*)0));
 assert(cmsg != ((void*)0));

 prm_direction = &cmsg->rm_direction;

 cmsg->rm_direction = CALL;
 cmsg->rm_call.cb_rpcvers = RPC_MSG_VERSION;
 if (
     (xdrs->x_op == XDR_ENCODE) &&
     xdr_u_int32_t(xdrs, &(cmsg->rm_xid)) &&
     xdr_enum(xdrs, (enum_t *) prm_direction) &&
     xdr_rpcvers(xdrs, &(cmsg->rm_call.cb_rpcvers)) &&
     xdr_rpcprog(xdrs, &(cmsg->rm_call.cb_prog)) )
  return (xdr_u_int32_t(xdrs, &(cmsg->rm_call.cb_vers)));
 return (FALSE);
}
