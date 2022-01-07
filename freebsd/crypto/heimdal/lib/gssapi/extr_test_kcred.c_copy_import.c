
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int gss_name_t ;
typedef scalar_t__ gss_cred_usage_t ;
typedef int gss_cred_id_t ;
typedef int gss_OID_set ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_C_BOTH ;
 int GSS_C_INDEFINITE ;
 int GSS_C_INITIATE ;
 int GSS_C_NO_NAME ;
 int GSS_C_NO_OID_SET ;
 scalar_t__ GSS_S_COMPLETE ;
 int compare (int ,int ) ;
 int errx (int,char*,...) ;
 scalar_t__ gss_acquire_cred (scalar_t__*,int ,int ,int ,int ,int *,int *,int *) ;
 scalar_t__ gss_compare_name (scalar_t__*,int ,int ,int*) ;
 scalar_t__ gss_inquire_cred (scalar_t__*,int ,int *,scalar_t__*,scalar_t__*,int *) ;
 scalar_t__ gss_krb5_copy_ccache (scalar_t__*,int ,int ) ;
 scalar_t__ gss_krb5_import_cred (scalar_t__*,int ,int *,int *,int *) ;
 int gss_release_cred (scalar_t__*,int *) ;
 int gss_release_name (scalar_t__*,int *) ;
 int gss_release_oid_set (scalar_t__*,int *) ;
 int krb5_cc_destroy (int ,int ) ;
 scalar_t__ krb5_cc_new_unique (int ,int ,int *,int *) ;
 int krb5_cc_type_memory ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_free_context (int ) ;
 scalar_t__ krb5_init_context (int *) ;

__attribute__((used)) static void
copy_import(void)
{
    gss_cred_id_t cred1, cred2;
    OM_uint32 maj_stat, min_stat;
    gss_name_t name1, name2;
    OM_uint32 lifetime1, lifetime2;
    gss_cred_usage_t usage1, usage2;
    gss_OID_set mechs1, mechs2;
    krb5_ccache id;
    krb5_error_code ret;
    krb5_context context;
    int equal;

    maj_stat = gss_acquire_cred(&min_stat, GSS_C_NO_NAME, GSS_C_INDEFINITE,
    GSS_C_NO_OID_SET, GSS_C_INITIATE,
    &cred1, ((void*)0), ((void*)0));
    if (maj_stat != GSS_S_COMPLETE)
 errx(1, "gss_acquire_cred");

    maj_stat = gss_inquire_cred(&min_stat, cred1, &name1, &lifetime1,
    &usage1, &mechs1);
    if (maj_stat != GSS_S_COMPLETE)
 errx(1, "gss_inquire_cred");

    ret = krb5_init_context(&context);
    if (ret)
 errx(1, "krb5_init_context");

    ret = krb5_cc_new_unique(context, krb5_cc_type_memory, ((void*)0), &id);
    if (ret)
 krb5_err(context, 1, ret, "krb5_cc_new_unique");

    maj_stat = gss_krb5_copy_ccache(&min_stat, cred1, id);
    if (maj_stat != GSS_S_COMPLETE)
 errx(1, "gss_krb5_copy_ccache");

    maj_stat = gss_krb5_import_cred(&min_stat, id, ((void*)0), ((void*)0), &cred2);
    if (maj_stat != GSS_S_COMPLETE)
 errx(1, "gss_krb5_import_cred");

    maj_stat = gss_inquire_cred(&min_stat, cred2, &name2, &lifetime2,
    &usage2, &mechs2);
    if (maj_stat != GSS_S_COMPLETE)
 errx(1, "gss_inquire_cred 2");

    maj_stat = gss_compare_name(&min_stat, name1, name2, &equal);
    if (maj_stat != GSS_S_COMPLETE)
 errx(1, "gss_compare_name");
    if (!equal)
 errx(1, "names not equal");

    if (lifetime1 != lifetime2)
 errx(1, "lifetime not equal %lu != %lu",
      (unsigned long)lifetime1, (unsigned long)lifetime2);

    if (usage1 != usage2) {

 if (usage1 != GSS_C_BOTH && usage2 != GSS_C_BOTH)
     errx(1, "usages disjoined");
    }

    gss_release_name(&min_stat, &name2);
    gss_release_oid_set(&min_stat, &mechs2);

    maj_stat = gss_inquire_cred(&min_stat, cred2, &name2, &lifetime2,
    &usage2, &mechs2);
    if (maj_stat != GSS_S_COMPLETE)
 errx(1, "gss_inquire_cred");

    maj_stat = gss_compare_name(&min_stat, name1, name2, &equal);
    if (maj_stat != GSS_S_COMPLETE)
 errx(1, "gss_compare_name");
    if (!equal)
 errx(1, "names not equal");

    if (lifetime1 != lifetime2)
 errx(1, "lifetime not equal %lu != %lu",
      (unsigned long)lifetime1, (unsigned long)lifetime2);

    gss_release_cred(&min_stat, &cred1);
    gss_release_cred(&min_stat, &cred2);

    gss_release_name(&min_stat, &name1);
    gss_release_name(&min_stat, &name2);





    gss_release_oid_set(&min_stat, &mechs1);
    gss_release_oid_set(&min_stat, &mechs2);

    krb5_cc_destroy(context, id);
    krb5_free_context(context);
}
