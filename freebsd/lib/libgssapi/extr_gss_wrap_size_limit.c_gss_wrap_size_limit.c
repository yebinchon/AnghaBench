
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _gss_mech_switch {scalar_t__ (* gm_wrap_size_limit ) (scalar_t__*,int ,int,int ,scalar_t__,scalar_t__*) ;} ;
struct _gss_context {int gc_ctx; struct _gss_mech_switch* gc_mech; } ;
typedef int gss_qop_t ;
typedef scalar_t__ gss_ctx_id_t ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_NO_CONTEXT ;
 scalar_t__ stub1 (scalar_t__*,int ,int,int ,scalar_t__,scalar_t__*) ;

OM_uint32
gss_wrap_size_limit(OM_uint32 *minor_status,
    const gss_ctx_id_t context_handle,
    int conf_req_flag,
    gss_qop_t qop_req,
    OM_uint32 req_output_size,
    OM_uint32 *max_input_size)
{
 struct _gss_context *ctx = (struct _gss_context *) context_handle;
 struct _gss_mech_switch *m;

 *max_input_size = 0;
 if (ctx == ((void*)0)) {
  *minor_status = 0;
  return (GSS_S_NO_CONTEXT);
 }
 m = ctx->gc_mech;

 return (m->gm_wrap_size_limit(minor_status, ctx->gc_ctx,
      conf_req_flag, qop_req, req_output_size, max_input_size));
}
