
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _gss_mech_switch {scalar_t__ (* gm_verify_mic ) (scalar_t__*,int ,int const,int const,scalar_t__*) ;} ;
struct _gss_context {int gc_ctx; struct _gss_mech_switch* gc_mech; } ;
typedef scalar_t__ gss_qop_t ;
typedef scalar_t__ gss_ctx_id_t ;
typedef int gss_buffer_t ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_NO_CONTEXT ;
 scalar_t__ stub1 (scalar_t__*,int ,int const,int const,scalar_t__*) ;

OM_uint32
gss_verify_mic(OM_uint32 *minor_status,
    const gss_ctx_id_t context_handle,
    const gss_buffer_t message_buffer,
    const gss_buffer_t token_buffer,
    gss_qop_t *qop_state)
{
 struct _gss_context *ctx = (struct _gss_context *) context_handle;
 struct _gss_mech_switch *m;

 if (qop_state)
  *qop_state = 0;
 if (ctx == ((void*)0)) {
  *minor_status = 0;
  return (GSS_S_NO_CONTEXT);
 }
 m = ctx->gc_mech;

 return (m->gm_verify_mic(minor_status, ctx->gc_ctx,
      message_buffer, token_buffer, qop_state));
}
