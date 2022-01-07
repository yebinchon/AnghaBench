
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _gss_mech_switch {scalar_t__ (* gm_pseudo_random ) (scalar_t__*,int ,int,int const,int ,int ) ;} ;
struct _gss_context {int gc_ctx; struct _gss_mech_switch* gc_mech; } ;
typedef int ssize_t ;
typedef scalar_t__ gss_ctx_id_t ;
typedef int gss_buffer_t ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_NO_CONTEXT ;
 scalar_t__ GSS_S_UNAVAILABLE ;
 int _gss_buffer_zero (int ) ;
 int _gss_mg_error (struct _gss_mech_switch*,scalar_t__,scalar_t__) ;
 scalar_t__ stub1 (scalar_t__*,int ,int,int const,int ,int ) ;

OM_uint32
gss_pseudo_random(OM_uint32 *minor_status,
    gss_ctx_id_t context,
    int prf_key,
    const gss_buffer_t prf_in,
    ssize_t desired_output_len,
    gss_buffer_t prf_out)
{
    struct _gss_context *ctx = (struct _gss_context *) context;
    struct _gss_mech_switch *m;
    OM_uint32 major_status;

    _gss_buffer_zero(prf_out);
    *minor_status = 0;

    if (ctx == ((void*)0)) {
 *minor_status = 0;
 return GSS_S_NO_CONTEXT;
    }
    m = ctx->gc_mech;

    if (m->gm_pseudo_random == ((void*)0))
 return GSS_S_UNAVAILABLE;

    major_status = (*m->gm_pseudo_random)(minor_status, ctx->gc_ctx,
       prf_key, prf_in, desired_output_len,
       prf_out);
    if (major_status != GSS_S_COMPLETE)
     _gss_mg_error(m, major_status, *minor_status);

    return major_status;
}
