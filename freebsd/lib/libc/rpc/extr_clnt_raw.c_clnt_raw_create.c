
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u_int32_t ;
struct TYPE_5__ {void* cb_vers; void* cb_prog; int cb_rpcvers; } ;
struct rpc_msg {TYPE_1__ rm_call; int rm_direction; } ;
struct TYPE_6__ {char* mashl_callmsg; } ;
struct TYPE_7__ {int cl_auth; int cl_ops; } ;
struct clntraw_private {char* _raw_buf; int mcnt; TYPE_2__ u; TYPE_3__ client_object; int xdr_stream; } ;
typedef scalar_t__ rpcvers_t ;
typedef scalar_t__ rpcprog_t ;
typedef int XDR ;
typedef TYPE_3__ CLIENT ;


 int CALL ;
 int MCALL_MSG_SIZE ;
 int RPC_MSG_VERSION ;
 int UDPMSGSIZE ;
 int XDR_DESTROY (int *) ;
 int XDR_ENCODE ;
 int XDR_FREE ;
 int XDR_GETPOS (int *) ;
 char* __rpc_rawcombuf ;
 int authnone_create () ;
 scalar_t__ calloc (int,int) ;
 int clnt_raw_ops () ;
 int clntraw_lock ;
 struct clntraw_private* clntraw_private ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int warnx (char*) ;
 int xdr_callhdr (int *,struct rpc_msg*) ;
 int xdrmem_create (int *,char*,int,int ) ;

CLIENT *
clnt_raw_create(rpcprog_t prog, rpcvers_t vers)
{
 struct clntraw_private *clp;
 struct rpc_msg call_msg;
 XDR *xdrs;
 CLIENT *client;

 mutex_lock(&clntraw_lock);
 if ((clp = clntraw_private) == ((void*)0)) {
  clp = (struct clntraw_private *)calloc(1, sizeof (*clp));
  if (clp == ((void*)0)) {
   mutex_unlock(&clntraw_lock);
   return ((void*)0);
  }
  if (__rpc_rawcombuf == ((void*)0))
   __rpc_rawcombuf =
       (char *)calloc(UDPMSGSIZE, sizeof (char));
  clp->_raw_buf = __rpc_rawcombuf;
  clntraw_private = clp;
 }
 xdrs = &clp->xdr_stream;
 client = &clp->client_object;




 call_msg.rm_direction = CALL;
 call_msg.rm_call.cb_rpcvers = RPC_MSG_VERSION;

 call_msg.rm_call.cb_prog = (u_int32_t)prog;
 call_msg.rm_call.cb_vers = (u_int32_t)vers;
 xdrmem_create(xdrs, clp->u.mashl_callmsg, MCALL_MSG_SIZE, XDR_ENCODE);
 if (! xdr_callhdr(xdrs, &call_msg))
  warnx("clntraw_create - Fatal header serialization error.");
 clp->mcnt = XDR_GETPOS(xdrs);
 XDR_DESTROY(xdrs);




 xdrmem_create(xdrs, clp->_raw_buf, UDPMSGSIZE, XDR_FREE);




 client->cl_ops = clnt_raw_ops();
 client->cl_auth = authnone_create();
 mutex_unlock(&clntraw_lock);
 return (client);
}
