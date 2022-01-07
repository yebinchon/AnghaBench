
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct _gss_mechanism_name {int gmn_name; } ;
struct _gss_mechanism_cred {int gmc_cred; int * gmc_mech_oid; TYPE_2__* gmc_mech; } ;
typedef TYPE_2__* gssapi_mech_interface ;
typedef int gss_cred_usage_t ;
typedef scalar_t__ gss_const_OID ;
typedef int gss_buffer_t ;
struct TYPE_9__ {int count; int * elements; } ;
typedef TYPE_3__ gss_OID_set_desc ;
struct TYPE_8__ {int (* gm_acquire_cred ) (int *,int ,int ,TYPE_3__*,int ,int *,int *,int *) ;TYPE_1__* gm_compat; int (* gm_acquire_cred_ext ) (int *,int ,scalar_t__,void const*,int ,int *,int ,int *) ;int gm_mech_oid; } ;
struct TYPE_7__ {int (* gmc_acquire_cred_with_password ) (int *,int ,int const,int ,TYPE_3__*,int ,int *,int *,int *) ;} ;
typedef int OM_uint32 ;


 int ENOMEM ;
 int GSS_C_CRED_PASSWORD ;
 scalar_t__ GSS_C_NO_OID ;
 int GSS_S_FAILURE ;
 int GSS_S_UNAVAILABLE ;
 struct _gss_mechanism_cred* calloc (int,int) ;
 int free (struct _gss_mechanism_cred*) ;
 scalar_t__ gss_oid_equal (scalar_t__,int ) ;
 int stub1 (int *,int ,scalar_t__,void const*,int ,int *,int ,int *) ;
 int stub2 (int *,int ,int const,int ,TYPE_3__*,int ,int *,int *,int *) ;
 int stub3 (int *,int ,int ,TYPE_3__*,int ,int *,int *,int *) ;

OM_uint32
_gss_acquire_mech_cred(OM_uint32 *minor_status,
         gssapi_mech_interface m,
         const struct _gss_mechanism_name *mn,
         gss_const_OID credential_type,
         const void *credential_data,
         OM_uint32 time_req,
         gss_const_OID desired_mech,
         gss_cred_usage_t cred_usage,
         struct _gss_mechanism_cred **output_cred_handle)
{
    OM_uint32 major_status;
    struct _gss_mechanism_cred *mc;
    gss_OID_set_desc set2;

    *output_cred_handle = ((void*)0);

    mc = calloc(1, sizeof(struct _gss_mechanism_cred));
    if (mc == ((void*)0)) {
 *minor_status = ENOMEM;
 return GSS_S_FAILURE;
    }

    mc->gmc_mech = m;
    mc->gmc_mech_oid = &m->gm_mech_oid;

    set2.count = 1;
    set2.elements = mc->gmc_mech_oid;

    if (m->gm_acquire_cred_ext) {
 major_status = m->gm_acquire_cred_ext(minor_status,
           mn->gmn_name,
           credential_type,
           credential_data,
           time_req,
           mc->gmc_mech_oid,
           cred_usage,
           &mc->gmc_cred);
    } else if (gss_oid_equal(credential_type, GSS_C_CRED_PASSWORD) &&
  m->gm_compat &&
  m->gm_compat->gmc_acquire_cred_with_password) {





 major_status = m->gm_compat->gmc_acquire_cred_with_password(minor_status,
    mn->gmn_name,
    (const gss_buffer_t)credential_data,
    time_req,
    &set2,
    cred_usage,
    &mc->gmc_cred,
    ((void*)0),
    ((void*)0));
    } else if (credential_type == GSS_C_NO_OID) {
 major_status = m->gm_acquire_cred(minor_status,
       mn->gmn_name,
       time_req,
       &set2,
       cred_usage,
       &mc->gmc_cred,
       ((void*)0),
       ((void*)0));
    } else {
 major_status = GSS_S_UNAVAILABLE;
 free(mc);
 mc= ((void*)0);
    }

    *output_cred_handle = mc;
    return major_status;
}
