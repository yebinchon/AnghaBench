
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _gss_mech_switch {scalar_t__ (* gm_krb5_compat_des3_mic ) (scalar_t__*,int ,int) ;} ;
struct _gss_context {int gc_ctx; struct _gss_mech_switch* gc_mech; } ;
typedef scalar_t__ gss_ctx_id_t ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ stub1 (scalar_t__*,int ,int) ;

OM_uint32
gss_krb5_compat_des3_mic(OM_uint32 *minor_status,
    gss_ctx_id_t context_handle, int flag)
{
 struct _gss_context *ctx = (struct _gss_context *) context_handle;
 struct _gss_mech_switch *m = ctx->gc_mech;

 *minor_status = 0;

 if (m->gm_krb5_compat_des3_mic)
  return (m->gm_krb5_compat_des3_mic(minor_status,
   ctx->gc_ctx, flag));

 return (GSS_S_FAILURE);
}
