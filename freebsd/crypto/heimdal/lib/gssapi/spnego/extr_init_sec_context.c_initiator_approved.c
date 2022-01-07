
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_name_t ;
typedef int gss_ctx_id_t ;
typedef int gss_buffer_desc ;
typedef int gss_OID ;
typedef int OM_uint32 ;


 int GSS_C_INDEFINITE ;
 int GSS_C_NO_BUFFER ;
 int GSS_C_NO_CHANNEL_BINDINGS ;
 int GSS_C_NO_CONTEXT ;
 int GSS_C_NO_CREDENTIAL ;
 scalar_t__ GSS_ERROR (int ) ;
 int GSS_S_BAD_MECH ;
 int GSS_S_COMPLETE ;
 int gss_delete_sec_context (int *,int *,int *) ;
 int gss_init_sec_context (int *,int ,int *,int ,int ,int ,int ,int ,int ,int *,int *,int *,int *) ;
 int gss_mg_collect_error (int ,int ,int ) ;
 int gss_release_buffer (int *,int *) ;

__attribute__((used)) static OM_uint32
initiator_approved(gss_name_t target_name, gss_OID mech)
{
    OM_uint32 min_stat, maj_stat;
    gss_ctx_id_t ctx = GSS_C_NO_CONTEXT;
    gss_buffer_desc out;

    maj_stat = gss_init_sec_context(&min_stat,
        GSS_C_NO_CREDENTIAL,
        &ctx,
        target_name,
        mech,
        0,
        GSS_C_INDEFINITE,
        GSS_C_NO_CHANNEL_BINDINGS,
        GSS_C_NO_BUFFER,
        ((void*)0),
        &out,
        ((void*)0),
        ((void*)0));
    if (GSS_ERROR(maj_stat)) {
 gss_mg_collect_error(mech, maj_stat, min_stat);
 return GSS_S_BAD_MECH;
    }
    gss_release_buffer(&min_stat, &out);
    gss_delete_sec_context(&min_stat, &ctx, ((void*)0));

    return GSS_S_COMPLETE;
}
