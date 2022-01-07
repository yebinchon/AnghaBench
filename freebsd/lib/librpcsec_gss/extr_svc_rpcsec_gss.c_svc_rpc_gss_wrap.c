
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int (* xdrproc_t ) (int *,int ) ;
struct TYPE_4__ {scalar_t__ service; } ;
struct svc_rpc_gss_client {scalar_t__ cl_state; int cl_seq; TYPE_1__ cl_rawcred; int cl_qop; int cl_ctx; } ;
typedef int caddr_t ;
typedef int bool_t ;
typedef int XDR ;
struct TYPE_5__ {scalar_t__ svc_ah_private; } ;
typedef TYPE_2__ SVCAUTH ;


 scalar_t__ CLIENT_ESTABLISHED ;
 int log_debug (char*) ;
 scalar_t__ rpc_gss_svc_none ;
 int xdr_rpc_gss_wrap_data (int *,int (*) (int *,int ),int ,int ,int ,scalar_t__,int ) ;

bool_t
svc_rpc_gss_wrap(SVCAUTH *auth, XDR *xdrs, xdrproc_t xdr_func, caddr_t xdr_ptr)
{
 struct svc_rpc_gss_client *client;

 log_debug("in svc_rpc_gss_wrap()");

 client = (struct svc_rpc_gss_client *) auth->svc_ah_private;
 if (client->cl_state != CLIENT_ESTABLISHED
     || client->cl_rawcred.service == rpc_gss_svc_none) {
  return xdr_func(xdrs, xdr_ptr);
 }
 return (xdr_rpc_gss_wrap_data(xdrs, xdr_func, xdr_ptr,
  client->cl_ctx, client->cl_qop,
  client->cl_rawcred.service, client->cl_seq));
}
