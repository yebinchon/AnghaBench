
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _gss_mech_switch {scalar_t__ (* gm_get_mic ) (scalar_t__*,int ,int ,int const,int ) ;} ;
struct _gss_context {int gc_ctx; struct _gss_mech_switch* gc_mech; } ;
typedef int gss_qop_t ;
typedef scalar_t__ gss_ctx_id_t ;
typedef int gss_buffer_t ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_NO_CONTEXT ;
 int _gss_buffer_zero (int ) ;
 scalar_t__ stub1 (scalar_t__*,int ,int ,int const,int ) ;

OM_uint32
gss_get_mic(OM_uint32 *minor_status,
    const gss_ctx_id_t context_handle,
    gss_qop_t qop_req,
    const gss_buffer_t message_buffer,
    gss_buffer_t message_token)
{
 struct _gss_context *ctx = (struct _gss_context *) context_handle;
 struct _gss_mech_switch *m;

 _gss_buffer_zero(message_token);
 if (ctx == ((void*)0)) {
  *minor_status = 0;
  return (GSS_S_NO_CONTEXT);
 }
 m = ctx->gc_mech;

 return (m->gm_get_mic(minor_status, ctx->gc_ctx, qop_req,
      message_buffer, message_token));
}
