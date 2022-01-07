
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gss_mech_compat_desc_struct {int (* gmc_inquire_saslname_for_mech ) (int *,int const,int ,int ,int ) ;} ;
typedef TYPE_1__* gssapi_mech_interface ;
typedef int gss_buffer_t ;
typedef int gss_OID ;
struct TYPE_3__ {struct gss_mech_compat_desc_struct* gm_compat; } ;
typedef int OM_uint32 ;


 int GSS_S_BAD_MECH ;
 int GSS_S_UNAVAILABLE ;
 TYPE_1__* __gss_get_mechanism (int const) ;
 int stub1 (int *,int const,int ,int ,int ) ;

__attribute__((used)) static OM_uint32
inquire_saslname_for_mech_compat(OM_uint32 *minor,
                                 const gss_OID desired_mech,
                                 gss_buffer_t sasl_mech_name,
                                 gss_buffer_t mech_name,
                                 gss_buffer_t mech_description)
{
    struct gss_mech_compat_desc_struct *gmc;
    gssapi_mech_interface m;
    OM_uint32 major;

    m = __gss_get_mechanism(desired_mech);
    if (m == ((void*)0))
        return GSS_S_BAD_MECH;

    gmc = m->gm_compat;

    if (gmc != ((void*)0) && gmc->gmc_inquire_saslname_for_mech != ((void*)0)) {
        major = gmc->gmc_inquire_saslname_for_mech(minor,
                                                   desired_mech,
                                                   sasl_mech_name,
                                                   mech_name,
                                                   mech_description);
    } else {
        major = GSS_S_UNAVAILABLE;
    }

    return major;
}
