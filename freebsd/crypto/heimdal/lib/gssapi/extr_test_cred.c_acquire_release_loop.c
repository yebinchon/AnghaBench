
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_name_t ;
typedef int gss_cred_usage_t ;
typedef int gss_cred_id_t ;
typedef scalar_t__ OM_uint32 ;


 int GSS_C_INDEFINITE ;
 int GSS_C_NO_OID_SET ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ gss_acquire_cred (scalar_t__*,int ,int ,int ,int ,int *,int *,int *) ;
 int gss_err (int,scalar_t__,char*,int,int) ;
 scalar_t__ gss_release_cred (scalar_t__*,int *) ;

__attribute__((used)) static void
acquire_release_loop(gss_name_t name, int counter, gss_cred_usage_t usage)
{
    OM_uint32 maj_stat, min_stat;
    gss_cred_id_t cred;
    int i;

    for (i = 0; i < counter; i++) {
 maj_stat = gss_acquire_cred(&min_stat, name,
        GSS_C_INDEFINITE,
        GSS_C_NO_OID_SET,
        usage,
        &cred,
        ((void*)0),
        ((void*)0));
 if (maj_stat != GSS_S_COMPLETE)
     gss_err(1, min_stat, "aquire %d %d != GSS_S_COMPLETE",
      i, (int)maj_stat);

 maj_stat = gss_release_cred(&min_stat, &cred);
 if (maj_stat != GSS_S_COMPLETE)
     gss_err(1, min_stat, "release %d %d != GSS_S_COMPLETE",
      i, (int)maj_stat);
    }
}
