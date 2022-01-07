
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _gss_mech_switch {int (* gm_unwrap ) (int *,int ,int const,int ,int*,int *) ;} ;
struct _gss_context {int gc_ctx; struct _gss_mech_switch* gc_mech; } ;
typedef int gss_qop_t ;
typedef scalar_t__ gss_ctx_id_t ;
typedef int gss_buffer_t ;
typedef int OM_uint32 ;


 int stub1 (int *,int ,int const,int ,int*,int *) ;

OM_uint32
gss_unwrap(OM_uint32 *minor_status,
    const gss_ctx_id_t context_handle,
    const gss_buffer_t input_message_buffer,
    gss_buffer_t output_message_buffer,
    int *conf_state,
    gss_qop_t *qop_state)
{
 struct _gss_context *ctx = (struct _gss_context *) context_handle;
 struct _gss_mech_switch *m = ctx->gc_mech;

 return (m->gm_unwrap(minor_status, ctx->gc_ctx,
      input_message_buffer, output_message_buffer,
      conf_state, qop_state));
}
