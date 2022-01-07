
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _gss_name {int dummy; } ;
struct _gss_mechanism_name {scalar_t__ gmn_name; } ;
struct _gss_mechanism_cred {int dummy; } ;
struct _gss_cred {int gc_mc; } ;
typedef int gssapi_mech_interface ;
typedef scalar_t__ gss_name_t ;
typedef int gss_cred_usage_t ;
typedef scalar_t__ gss_cred_id_t ;
typedef scalar_t__ gss_const_OID ;
struct TYPE_4__ {int count; int * elements; } ;
typedef TYPE_1__ gss_OID_set_desc ;
typedef int * gss_OID ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ ENOMEM ;
 scalar_t__ const GSS_C_NO_NAME ;
 scalar_t__ GSS_C_NO_OID ;
 scalar_t__ GSS_ERROR (scalar_t__) ;
 scalar_t__ GSS_S_BAD_MECH ;
 scalar_t__ GSS_S_CALL_INACCESSIBLE_READ ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ GSS_S_NO_CRED ;
 int HEIM_SLIST_FIRST (int *) ;
 int HEIM_SLIST_INIT (int *) ;
 int HEIM_SLIST_INSERT_HEAD (int *,struct _gss_mechanism_cred*,int ) ;
 int __gss_get_mechanism (int *) ;
 scalar_t__ _gss_acquire_mech_cred (scalar_t__*,int ,struct _gss_mechanism_name*,scalar_t__,void const*,scalar_t__,scalar_t__,int ,struct _gss_mechanism_cred**) ;
 scalar_t__ _gss_find_mn (scalar_t__*,struct _gss_name*,int *,struct _gss_mechanism_name**) ;
 int _gss_load_mech () ;
 TYPE_1__* _gss_mech_oids ;
 struct _gss_cred* calloc (int,int) ;
 int free (struct _gss_cred*) ;
 int gmc_link ;
 int gss_test_oid_set_member (scalar_t__*,int *,TYPE_1__*,int*) ;

OM_uint32
_gss_acquire_cred_ext(OM_uint32 *minor_status,
    const gss_name_t desired_name,
    gss_const_OID credential_type,
    const void *credential_data,
    OM_uint32 time_req,
    gss_const_OID desired_mech,
    gss_cred_usage_t cred_usage,
    gss_cred_id_t *output_cred_handle)
{
    OM_uint32 major_status;
    struct _gss_name *name = (struct _gss_name *) desired_name;
    gssapi_mech_interface m;
    struct _gss_cred *cred;
    gss_OID_set_desc set, *mechs;
    size_t i;

    *minor_status = 0;
    if (output_cred_handle == ((void*)0))
 return GSS_S_CALL_INACCESSIBLE_READ;

    _gss_load_mech();

    if (desired_mech != GSS_C_NO_OID) {
 int match = 0;

 gss_test_oid_set_member(minor_status, (gss_OID)desired_mech,
    _gss_mech_oids, &match);
 if (!match)
     return GSS_S_BAD_MECH;

 set.count = 1;
 set.elements = (gss_OID)desired_mech;
 mechs = &set;
    } else
 mechs = _gss_mech_oids;

    cred = calloc(1, sizeof(*cred));
    if (cred == ((void*)0)) {
 *minor_status = ENOMEM;
 return GSS_S_FAILURE;
    }

    HEIM_SLIST_INIT(&cred->gc_mc);

    for (i = 0; i < mechs->count; i++) {
 struct _gss_mechanism_name *mn = ((void*)0);
 struct _gss_mechanism_cred *mc = ((void*)0);
 gss_name_t desired_mech_name = GSS_C_NO_NAME;

 m = __gss_get_mechanism(&mechs->elements[i]);
 if (!m)
     continue;

 if (desired_name != GSS_C_NO_NAME) {
     major_status = _gss_find_mn(minor_status, name,
     &mechs->elements[i], &mn);
     if (major_status != GSS_S_COMPLETE)
  continue;

     desired_mech_name = mn->gmn_name;
 }

 major_status = _gss_acquire_mech_cred(minor_status, m, mn,
           credential_type, credential_data,
           time_req, desired_mech, cred_usage,
           &mc);
 if (GSS_ERROR(major_status))
     continue;

 HEIM_SLIST_INSERT_HEAD(&cred->gc_mc, mc, gmc_link);
    }





    if (!HEIM_SLIST_FIRST(&cred->gc_mc)) {
 free(cred);
 *minor_status = 0;
 return GSS_S_NO_CRED;
    }

    *output_cred_handle = (gss_cred_id_t) cred;
    *minor_status = 0;
    return GSS_S_COMPLETE;
}
