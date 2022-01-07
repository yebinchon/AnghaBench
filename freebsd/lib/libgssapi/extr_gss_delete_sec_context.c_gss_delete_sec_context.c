
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _gss_context {scalar_t__ gc_ctx; TYPE_1__* gc_mech; } ;
typedef scalar_t__ gss_ctx_id_t ;
typedef scalar_t__ gss_buffer_t ;
struct TYPE_2__ {scalar_t__ (* gm_delete_sec_context ) (scalar_t__*,scalar_t__*,scalar_t__) ;} ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_C_NO_CONTEXT ;
 scalar_t__ GSS_S_COMPLETE ;
 int _gss_buffer_zero (scalar_t__) ;
 int free (struct _gss_context*) ;
 scalar_t__ stub1 (scalar_t__*,scalar_t__*,scalar_t__) ;

OM_uint32
gss_delete_sec_context(OM_uint32 *minor_status,
    gss_ctx_id_t *context_handle,
    gss_buffer_t output_token)
{
 OM_uint32 major_status;
 struct _gss_context *ctx = (struct _gss_context *) *context_handle;

 if (output_token)
  _gss_buffer_zero(output_token);

 *minor_status = 0;
 if (ctx) {




  if (ctx->gc_ctx) {
   major_status = ctx->gc_mech->gm_delete_sec_context(
    minor_status, &ctx->gc_ctx, output_token);
  }
  free(ctx);
  *context_handle = GSS_C_NO_CONTEXT;
 }

 return (GSS_S_COMPLETE);
}
