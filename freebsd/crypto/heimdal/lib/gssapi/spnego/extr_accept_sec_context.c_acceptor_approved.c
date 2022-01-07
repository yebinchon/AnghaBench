
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_name_t ;
typedef int gss_cred_id_t ;
typedef int gss_OID_set ;
typedef int gss_OID ;
typedef scalar_t__ OM_uint32 ;


 int GSS_C_ACCEPT ;
 int GSS_C_INDEFINITE ;
 int GSS_C_NO_CREDENTIAL ;
 int GSS_C_NO_NAME ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ gss_acquire_cred (scalar_t__*,int ,int ,int ,int ,int *,int *,int *) ;
 int gss_add_oid_set_member (scalar_t__*,int ,int *) ;
 int gss_create_empty_oid_set (scalar_t__*,int *) ;
 int gss_release_cred (scalar_t__*,int *) ;
 int gss_release_oid_set (scalar_t__*,int *) ;

__attribute__((used)) static OM_uint32
acceptor_approved(gss_name_t target_name, gss_OID mech)
{
    gss_cred_id_t cred = GSS_C_NO_CREDENTIAL;
    gss_OID_set oidset;
    OM_uint32 junk, ret;

    if (target_name == GSS_C_NO_NAME)
 return GSS_S_COMPLETE;

    gss_create_empty_oid_set(&junk, &oidset);
    gss_add_oid_set_member(&junk, mech, &oidset);

    ret = gss_acquire_cred(&junk, target_name, GSS_C_INDEFINITE, oidset,
      GSS_C_ACCEPT, &cred, ((void*)0), ((void*)0));
    gss_release_oid_set(&junk, &oidset);
    if (ret != GSS_S_COMPLETE)
 return ret;
    gss_release_cred(&junk, &cred);

    return GSS_S_COMPLETE;
}
