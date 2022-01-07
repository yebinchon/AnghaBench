
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ (* xdrproc_t ) (int *,void*) ;
typedef int tmpheader ;
struct TYPE_7__ {scalar_t__ gc_proc; scalar_t__ gc_svc; int gc_seq; } ;
struct rpc_gss_data {scalar_t__ gd_state; TYPE_2__ gd_cred; int gd_qop; int gd_ctx; int gd_mech; } ;
struct opaque_auth {char* oa_base; size_t oa_length; void* oa_flavor; } ;
struct TYPE_6__ {size_t length; char* value; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int credbuf ;
typedef scalar_t__ bool_t ;
typedef int XDR ;
typedef scalar_t__ OM_uint32 ;
typedef int AUTH ;


 struct rpc_gss_data* AUTH_PRIVATE (int *) ;
 int ENOMEM ;
 int EPERM ;
 scalar_t__ FALSE ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_CONTEXT_EXPIRED ;
 int MAX_AUTH_BYTES ;
 void* RPCSEC_GSS ;
 scalar_t__ RPCSEC_GSS_CONTINUE_INIT ;
 scalar_t__ RPCSEC_GSS_ESTABLISHED ;
 scalar_t__ RPCSEC_GSS_INIT ;
 int RPC_GSS_ER_SYSTEMERROR ;
 int TRUE ;
 int XDR_DESTROY (int *) ;
 int XDR_ENCODE ;
 void* XDR_GETPOS (int *) ;
 int XDR_PUTBYTES (int *,char*,size_t) ;
 struct opaque_auth _null_auth ;
 int _rpc_gss_set_error (int ,int ) ;
 scalar_t__ gss_get_mic (scalar_t__*,int ,int ,TYPE_1__*,TYPE_1__*) ;
 int gss_release_buffer (scalar_t__*,TYPE_1__*) ;
 int log_debug (char*) ;
 int log_status (char*,int ,scalar_t__,scalar_t__) ;
 int rpc_gss_destroy_context (int *,int ) ;
 scalar_t__ rpc_gss_svc_none ;
 scalar_t__ xdr_opaque_auth (int *,struct opaque_auth*) ;
 int xdr_rpc_gss_cred (int *,TYPE_2__*) ;
 scalar_t__ xdr_rpc_gss_wrap_data (int *,scalar_t__ (*) (int *,void*),void*,int ,int ,scalar_t__,int ) ;
 int xdrmem_create (int *,char*,int,int ) ;

bool_t
__rpc_gss_wrap(AUTH *auth, void *header, size_t headerlen,
    XDR* xdrs, xdrproc_t xdr_args, void *args_ptr)
{
 XDR tmpxdrs;
 char credbuf[MAX_AUTH_BYTES];
 char tmpheader[MAX_AUTH_BYTES];
 struct opaque_auth creds, verf;
 struct rpc_gss_data *gd;
 gss_buffer_desc rpcbuf, checksum;
 OM_uint32 maj_stat, min_stat;
 bool_t xdr_stat;

 log_debug("in rpc_gss_wrap()");

 gd = AUTH_PRIVATE(auth);

 if (gd->gd_state == RPCSEC_GSS_ESTABLISHED)
  gd->gd_cred.gc_seq++;






 xdrmem_create(&tmpxdrs, credbuf, sizeof(credbuf), XDR_ENCODE);
 if (!xdr_rpc_gss_cred(&tmpxdrs, &gd->gd_cred)) {
  XDR_DESTROY(&tmpxdrs);
  _rpc_gss_set_error(RPC_GSS_ER_SYSTEMERROR, ENOMEM);
  return (FALSE);
 }
 creds.oa_flavor = RPCSEC_GSS;
 creds.oa_base = credbuf;
 creds.oa_length = XDR_GETPOS(&tmpxdrs);
 XDR_DESTROY(&tmpxdrs);

 xdrmem_create(&tmpxdrs, tmpheader, sizeof(tmpheader), XDR_ENCODE);
 if (!XDR_PUTBYTES(&tmpxdrs, header, headerlen) ||
     !xdr_opaque_auth(&tmpxdrs, &creds)) {
  XDR_DESTROY(&tmpxdrs);
  _rpc_gss_set_error(RPC_GSS_ER_SYSTEMERROR, ENOMEM);
  return (FALSE);
 }
 headerlen = XDR_GETPOS(&tmpxdrs);
 XDR_DESTROY(&tmpxdrs);

 if (!XDR_PUTBYTES(xdrs, tmpheader, headerlen)) {
  _rpc_gss_set_error(RPC_GSS_ER_SYSTEMERROR, ENOMEM);
  return (FALSE);
 }

 if (gd->gd_cred.gc_proc == RPCSEC_GSS_INIT ||
     gd->gd_cred.gc_proc == RPCSEC_GSS_CONTINUE_INIT) {
  if (!xdr_opaque_auth(xdrs, &_null_auth)) {
   _rpc_gss_set_error(RPC_GSS_ER_SYSTEMERROR, ENOMEM);
   return (FALSE);
  }
 } else {




  rpcbuf.length = headerlen;
  rpcbuf.value = tmpheader;

  maj_stat = gss_get_mic(&min_stat, gd->gd_ctx, gd->gd_qop,
      &rpcbuf, &checksum);

  if (maj_stat != GSS_S_COMPLETE) {
   log_status("gss_get_mic", gd->gd_mech,
       maj_stat, min_stat);
   if (maj_stat == GSS_S_CONTEXT_EXPIRED) {
    rpc_gss_destroy_context(auth, TRUE);
   }
   _rpc_gss_set_error(RPC_GSS_ER_SYSTEMERROR, EPERM);
   return (FALSE);
  }

  verf.oa_flavor = RPCSEC_GSS;
  verf.oa_base = checksum.value;
  verf.oa_length = checksum.length;

  xdr_stat = xdr_opaque_auth(xdrs, &verf);
  gss_release_buffer(&min_stat, &checksum);
  if (!xdr_stat) {
   _rpc_gss_set_error(RPC_GSS_ER_SYSTEMERROR, ENOMEM);
   return (FALSE);
  }
 }

 if (gd->gd_state != RPCSEC_GSS_ESTABLISHED ||
     gd->gd_cred.gc_svc == rpc_gss_svc_none) {
  return (xdr_args(xdrs, args_ptr));
 }
 return (xdr_rpc_gss_wrap_data(xdrs, xdr_args, args_ptr,
  gd->gd_ctx, gd->gd_qop, gd->gd_cred.gc_svc,
  gd->gd_cred.gc_seq));
}
