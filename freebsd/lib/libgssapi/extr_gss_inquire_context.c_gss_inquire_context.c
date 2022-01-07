
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _gss_name {int dummy; } ;
struct _gss_mech_switch {scalar_t__ (* gm_inquire_context ) (scalar_t__*,int ,scalar_t__*,scalar_t__*,scalar_t__*,int *,scalar_t__*,int*,int*) ;int (* gm_release_name ) (scalar_t__*,scalar_t__*) ;} ;
struct _gss_context {int gc_ctx; struct _gss_mech_switch* gc_mech; } ;
typedef scalar_t__ gss_name_t ;
typedef scalar_t__ gss_ctx_id_t ;
typedef int gss_OID ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_C_NO_NAME ;
 int GSS_C_NO_OID ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 struct _gss_name* _gss_make_name (struct _gss_mech_switch*,scalar_t__) ;
 int _gss_mg_error (struct _gss_mech_switch*,scalar_t__,scalar_t__) ;
 int gss_release_name (scalar_t__*,scalar_t__*) ;
 scalar_t__ stub1 (scalar_t__*,int ,scalar_t__*,scalar_t__*,scalar_t__*,int *,scalar_t__*,int*,int*) ;
 int stub2 (scalar_t__*,scalar_t__*) ;
 int stub3 (scalar_t__*,scalar_t__*) ;

OM_uint32
gss_inquire_context(OM_uint32 *minor_status,
    const gss_ctx_id_t context_handle,
    gss_name_t *src_name,
    gss_name_t *targ_name,
    OM_uint32 *lifetime_rec,
    gss_OID *mech_type,
    OM_uint32 *ctx_flags,
    int *locally_initiated,
    int *open)
{
 OM_uint32 major_status;
 struct _gss_context *ctx = (struct _gss_context *) context_handle;
 struct _gss_mech_switch *m = ctx->gc_mech;
 struct _gss_name *name;
 gss_name_t src_mn, targ_mn;

 if (locally_initiated)
  *locally_initiated = 0;
 if (open)
  *open = 0;
 if (lifetime_rec)
  *lifetime_rec = 0;

 if (src_name)
  *src_name = GSS_C_NO_NAME;
 if (targ_name)
  *targ_name = GSS_C_NO_NAME;
 if (mech_type)
  *mech_type = GSS_C_NO_OID;
 src_mn = targ_mn = GSS_C_NO_NAME;

 major_status = m->gm_inquire_context(minor_status,
     ctx->gc_ctx,
     src_name ? &src_mn : ((void*)0),
     targ_name ? &targ_mn : ((void*)0),
     lifetime_rec,
     mech_type,
     ctx_flags,
     locally_initiated,
     open);

 if (major_status != GSS_S_COMPLETE) {
  _gss_mg_error(m, major_status, *minor_status);
  return (major_status);
 }

 if (src_name) {
  name = _gss_make_name(m, src_mn);
  if (!name) {
   if (mech_type)
    *mech_type = GSS_C_NO_OID;
   m->gm_release_name(minor_status, &src_mn);
   *minor_status = 0;
   return (GSS_S_FAILURE);
  }
  *src_name = (gss_name_t) name;
 }

 if (targ_name) {
  name = _gss_make_name(m, targ_mn);
  if (!name) {
   if (mech_type)
    *mech_type = GSS_C_NO_OID;
   if (src_name)
    gss_release_name(minor_status, src_name);
   m->gm_release_name(minor_status, &src_mn);
   minor_status = ((void*)0);
   return (GSS_S_FAILURE);
  }
  *targ_name = (gss_name_t) name;
 }

 return (GSS_S_COMPLETE);
}
