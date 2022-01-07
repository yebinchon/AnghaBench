
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_name_t ;
typedef int gss_cred_usage_t ;
typedef int gss_cred_id_t ;
typedef scalar_t__ OM_uint32 ;


 int GSS_C_BOTH ;
 int GSS_C_INDEFINITE ;
 int GSS_C_NO_NAME ;
 int GSS_C_NO_OID_SET ;
 int GSS_KRB5_MECHANISM ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ gss_acquire_cred (scalar_t__*,int ,int ,int ,int ,int *,int *,int *) ;
 scalar_t__ gss_add_cred (scalar_t__*,int ,int ,int ,int ,int ,int ,int *,int *,int *,int *) ;
 int gss_err (int,scalar_t__,char*,int) ;
 scalar_t__ gss_release_cred (scalar_t__*,int *) ;

__attribute__((used)) static void
acquire_add_release_add(gss_name_t name, gss_cred_usage_t usage)
{
    OM_uint32 maj_stat, min_stat;
    gss_cred_id_t cred, cred2, cred3;

    maj_stat = gss_acquire_cred(&min_stat, name,
    GSS_C_INDEFINITE,
    GSS_C_NO_OID_SET,
    usage,
    &cred,
    ((void*)0),
    ((void*)0));
    if (maj_stat != GSS_S_COMPLETE)
 gss_err(1, min_stat, "aquire %d != GSS_S_COMPLETE", (int)maj_stat);

    maj_stat = gss_add_cred(&min_stat,
       cred,
       GSS_C_NO_NAME,
       GSS_KRB5_MECHANISM,
       usage,
       GSS_C_INDEFINITE,
       GSS_C_INDEFINITE,
       &cred2,
       ((void*)0),
       ((void*)0),
       ((void*)0));

    if (maj_stat != GSS_S_COMPLETE)
 gss_err(1, min_stat, "add_cred %d != GSS_S_COMPLETE", (int)maj_stat);

    maj_stat = gss_release_cred(&min_stat, &cred);
    if (maj_stat != GSS_S_COMPLETE)
 gss_err(1, min_stat, "release %d != GSS_S_COMPLETE", (int)maj_stat);

    maj_stat = gss_add_cred(&min_stat,
       cred2,
       GSS_C_NO_NAME,
       GSS_KRB5_MECHANISM,
       GSS_C_BOTH,
       GSS_C_INDEFINITE,
       GSS_C_INDEFINITE,
       &cred3,
       ((void*)0),
       ((void*)0),
       ((void*)0));

    maj_stat = gss_release_cred(&min_stat, &cred2);
    if (maj_stat != GSS_S_COMPLETE)
 gss_err(1, min_stat, "release 2 %d != GSS_S_COMPLETE", (int)maj_stat);

    maj_stat = gss_release_cred(&min_stat, &cred3);
    if (maj_stat != GSS_S_COMPLETE)
 gss_err(1, min_stat, "release 2 %d != GSS_S_COMPLETE", (int)maj_stat);
}
