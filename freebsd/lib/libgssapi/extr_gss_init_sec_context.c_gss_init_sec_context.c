
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _gss_name {int dummy; } ;
struct _gss_mechanism_name {int gmn_name; } ;
struct _gss_mech_switch {scalar_t__ (* gm_init_sec_context ) (scalar_t__*,int ,int *,int ,int *,scalar_t__,scalar_t__,int const,int const,int **,int ,scalar_t__*,scalar_t__*) ;int gm_mech_oid; } ;
struct _gss_context {int gc_ctx; struct _gss_mech_switch* gc_mech; } ;
typedef scalar_t__ gss_name_t ;
typedef scalar_t__ gss_ctx_id_t ;
typedef int gss_cred_id_t ;
typedef int gss_channel_bindings_t ;
typedef int gss_buffer_t ;
typedef int * gss_OID ;
struct TYPE_3__ {scalar_t__ count; int * elements; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ ENOMEM ;
 int * GSS_C_NO_OID ;
 TYPE_1__* GSS_C_NO_OID_SET ;
 scalar_t__ GSS_S_BAD_MECH ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_CONTINUE_NEEDED ;
 scalar_t__ GSS_S_FAILURE ;
 int _gss_buffer_zero (int ) ;
 struct _gss_mech_switch* _gss_find_mech_switch (int *) ;
 scalar_t__ _gss_find_mn (scalar_t__*,struct _gss_name*,int *,struct _gss_mechanism_name**) ;
 int _gss_load_mech () ;
 int _gss_mech_cred_find (int const,int *) ;
 TYPE_1__* _gss_mech_oids ;
 int _gss_mg_error (struct _gss_mech_switch*,scalar_t__,scalar_t__) ;
 int free (struct _gss_context*) ;
 struct _gss_context* malloc (int) ;
 int memset (struct _gss_context*,int ,int) ;
 scalar_t__ stub1 (scalar_t__*,int ,int *,int ,int *,scalar_t__,scalar_t__,int const,int const,int **,int ,scalar_t__*,scalar_t__*) ;

OM_uint32
gss_init_sec_context(OM_uint32 * minor_status,
    const gss_cred_id_t initiator_cred_handle,
    gss_ctx_id_t * context_handle,
    const gss_name_t target_name,
    const gss_OID input_mech_type,
    OM_uint32 req_flags,
    OM_uint32 time_req,
    const gss_channel_bindings_t input_chan_bindings,
    const gss_buffer_t input_token,
    gss_OID * actual_mech_type,
    gss_buffer_t output_token,
    OM_uint32 * ret_flags,
    OM_uint32 * time_rec)
{
 OM_uint32 major_status;
 struct _gss_mech_switch *m;
 struct _gss_name *name = (struct _gss_name *) target_name;
 struct _gss_mechanism_name *mn;
 struct _gss_context *ctx = (struct _gss_context *) *context_handle;
 gss_cred_id_t cred_handle;
 int allocated_ctx;
 gss_OID mech_type = input_mech_type;

 *minor_status = 0;

 _gss_buffer_zero(output_token);
 if (actual_mech_type)
  *actual_mech_type = GSS_C_NO_OID;
 if (ret_flags)
  *ret_flags = 0;
 if (time_rec)
  *time_rec = 0;






 if (!ctx) {
  if (mech_type == GSS_C_NO_OID) {
   _gss_load_mech();
   if (_gss_mech_oids == GSS_C_NO_OID_SET
       || _gss_mech_oids->count == 0)
    return (GSS_S_BAD_MECH);
   mech_type = &_gss_mech_oids->elements[0];
  }

  ctx = malloc(sizeof(struct _gss_context));
  if (!ctx) {
   *minor_status = ENOMEM;
   return (GSS_S_FAILURE);
  }
  memset(ctx, 0, sizeof(struct _gss_context));
  m = ctx->gc_mech = _gss_find_mech_switch(mech_type);
  if (!m) {
   free(ctx);
   return (GSS_S_BAD_MECH);
  }
  allocated_ctx = 1;
 } else {
  m = ctx->gc_mech;
  mech_type = &ctx->gc_mech->gm_mech_oid;
  allocated_ctx = 0;
 }




 major_status = _gss_find_mn(minor_status, name, mech_type, &mn);
 if (major_status != GSS_S_COMPLETE) {
  if (allocated_ctx)
   free(ctx);
  return (major_status);
 }




 cred_handle = _gss_mech_cred_find(initiator_cred_handle, mech_type);

 major_status = m->gm_init_sec_context(minor_status,
     cred_handle,
     &ctx->gc_ctx,
     mn->gmn_name,
     mech_type,
     req_flags,
     time_req,
     input_chan_bindings,
     input_token,
     actual_mech_type,
     output_token,
     ret_flags,
     time_rec);

 if (major_status != GSS_S_COMPLETE
     && major_status != GSS_S_CONTINUE_NEEDED) {
  if (allocated_ctx)
   free(ctx);
  _gss_buffer_zero(output_token);
  _gss_mg_error(m, major_status, *minor_status);
 } else {
  *context_handle = (gss_ctx_id_t) ctx;
 }

 return (major_status);
}
