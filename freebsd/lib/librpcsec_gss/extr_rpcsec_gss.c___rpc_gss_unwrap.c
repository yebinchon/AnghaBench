
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int (* xdrproc_t ) (int *,void*) ;
struct TYPE_2__ {scalar_t__ gc_svc; int gc_seq; } ;
struct rpc_gss_data {scalar_t__ gd_state; TYPE_1__ gd_cred; int gd_qop; int gd_ctx; } ;
typedef int bool_t ;
typedef int XDR ;
typedef int AUTH ;


 struct rpc_gss_data* AUTH_PRIVATE (int *) ;
 scalar_t__ RPCSEC_GSS_ESTABLISHED ;
 int log_debug (char*) ;
 scalar_t__ rpc_gss_svc_none ;
 int xdr_rpc_gss_unwrap_data (int *,int (*) (int *,void*),void*,int ,int ,scalar_t__,int ) ;

bool_t
__rpc_gss_unwrap(AUTH *auth, XDR *xdrs, xdrproc_t xdr_func, void *xdr_ptr)
{
 struct rpc_gss_data *gd;

 log_debug("in rpc_gss_unwrap()");

 gd = AUTH_PRIVATE(auth);

 if (gd->gd_state != RPCSEC_GSS_ESTABLISHED ||
     gd->gd_cred.gc_svc == rpc_gss_svc_none) {
  return (xdr_func(xdrs, xdr_ptr));
 }
 return (xdr_rpc_gss_unwrap_data(xdrs, xdr_func, xdr_ptr,
  gd->gd_ctx, gd->gd_qop, gd->gd_cred.gc_svc,
  gd->gd_cred.gc_seq));
}
