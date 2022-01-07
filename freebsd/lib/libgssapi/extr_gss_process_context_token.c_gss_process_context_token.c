
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _gss_mech_switch {int (* gm_process_context_token ) (int *,int ,int const) ;} ;
struct _gss_context {int gc_ctx; struct _gss_mech_switch* gc_mech; } ;
typedef scalar_t__ gss_ctx_id_t ;
typedef int gss_buffer_t ;
typedef int OM_uint32 ;


 int stub1 (int *,int ,int const) ;

OM_uint32
gss_process_context_token(OM_uint32 *minor_status,
    const gss_ctx_id_t context_handle,
    const gss_buffer_t token_buffer)
{
 struct _gss_context *ctx = (struct _gss_context *) context_handle;
 struct _gss_mech_switch *m = ctx->gc_mech;

 return (m->gm_process_context_token(minor_status, ctx->gc_ctx,
      token_buffer));
}
