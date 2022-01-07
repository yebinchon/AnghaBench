
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int uint32_t ;
struct TYPE_7__ {int gc_seq; } ;
struct TYPE_6__ {int length; int * value; } ;
struct rpc_gss_data {scalar_t__ gd_state; scalar_t__ gd_qop; int gd_mech; int gd_ctx; TYPE_2__ gd_cred; TYPE_1__ gd_verf; } ;
struct opaque_auth {int oa_length; int * oa_base; } ;
typedef int num ;
typedef scalar_t__ gss_qop_t ;
struct TYPE_8__ {int length; int * value; } ;
typedef TYPE_3__ gss_buffer_desc ;
typedef int bool_t ;
typedef scalar_t__ OM_uint32 ;
typedef int AUTH ;


 struct rpc_gss_data* AUTH_PRIVATE (int *) ;
 int ENOMEM ;
 int EPERM ;
 int FALSE ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_CONTEXT_EXPIRED ;
 scalar_t__ RPCSEC_GSS_CONTEXT ;
 int RPC_GSS_ER_SYSTEMERROR ;
 int TRUE ;
 int _rpc_gss_set_error (int ,int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ gss_verify_mic (scalar_t__*,int ,TYPE_3__*,TYPE_3__*,scalar_t__*) ;
 int htonl (int ) ;
 int log_debug (char*) ;
 int log_status (char*,int ,scalar_t__,scalar_t__) ;
 int * mem_alloc (int) ;
 int memcpy (int *,int *,int) ;
 int rpc_gss_destroy_context (int *,int ) ;
 int stderr ;
 int xdr_free (int ,char*) ;
 scalar_t__ xdr_gss_buffer_desc ;

__attribute__((used)) static bool_t
rpc_gss_validate(AUTH *auth, struct opaque_auth *verf)
{
 struct rpc_gss_data *gd;
 gss_qop_t qop_state;
 uint32_t num;
 gss_buffer_desc signbuf, checksum;
 OM_uint32 maj_stat, min_stat;

 log_debug("in rpc_gss_validate()");

 gd = AUTH_PRIVATE(auth);

 if (gd->gd_state == RPCSEC_GSS_CONTEXT) {





  if (gd->gd_verf.value)
   xdr_free((xdrproc_t) xdr_gss_buffer_desc,
       (char *) &gd->gd_verf);
  gd->gd_verf.value = mem_alloc(verf->oa_length);
  if (gd->gd_verf.value == ((void*)0)) {
   fprintf(stderr, "gss_validate: out of memory\n");
   _rpc_gss_set_error(RPC_GSS_ER_SYSTEMERROR, ENOMEM);
   return (FALSE);
  }
  memcpy(gd->gd_verf.value, verf->oa_base, verf->oa_length);
  gd->gd_verf.length = verf->oa_length;
  return (TRUE);
 }

 num = htonl(gd->gd_cred.gc_seq);
 signbuf.value = &num;
 signbuf.length = sizeof(num);

 checksum.value = verf->oa_base;
 checksum.length = verf->oa_length;

 maj_stat = gss_verify_mic(&min_stat, gd->gd_ctx, &signbuf,
     &checksum, &qop_state);
 if (maj_stat != GSS_S_COMPLETE || qop_state != gd->gd_qop) {
  log_status("gss_verify_mic", gd->gd_mech, maj_stat, min_stat);
  if (maj_stat == GSS_S_CONTEXT_EXPIRED) {
   rpc_gss_destroy_context(auth, TRUE);
  }
  _rpc_gss_set_error(RPC_GSS_ER_SYSTEMERROR, EPERM);
  return (FALSE);
 }
 return (TRUE);
}
