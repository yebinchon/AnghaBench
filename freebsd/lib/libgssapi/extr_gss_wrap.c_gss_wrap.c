
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _gss_mech_switch {scalar_t__ (* gm_wrap ) (scalar_t__*,int ,int,int ,int const,int*,int ) ;} ;
struct _gss_context {int gc_ctx; struct _gss_mech_switch* gc_mech; } ;
typedef int gss_qop_t ;
typedef scalar_t__ gss_ctx_id_t ;
typedef int gss_buffer_t ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_NO_CONTEXT ;
 int _gss_buffer_zero (int ) ;
 scalar_t__ stub1 (scalar_t__*,int ,int,int ,int const,int*,int ) ;

OM_uint32
gss_wrap(OM_uint32 *minor_status,
    const gss_ctx_id_t context_handle,
    int conf_req_flag,
    gss_qop_t qop_req,
    const gss_buffer_t input_message_buffer,
    int *conf_state,
    gss_buffer_t output_message_buffer)
{
 struct _gss_context *ctx = (struct _gss_context *) context_handle;
 struct _gss_mech_switch *m;

 if (conf_state)
  *conf_state = 0;
 _gss_buffer_zero(output_message_buffer);
 if (ctx == ((void*)0)) {
  *minor_status = 0;
  return (GSS_S_NO_CONTEXT);
 }
 m = ctx->gc_mech;

 return (m->gm_wrap(minor_status, ctx->gc_ctx,
      conf_req_flag, qop_req, input_message_buffer,
      conf_state, output_message_buffer));
}
