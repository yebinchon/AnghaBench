
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int * rtbl_t ;
struct TYPE_10__ {scalar_t__ value; scalar_t__ length; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef TYPE_2__* gss_OID_set ;
struct TYPE_11__ {size_t count; int * elements; } ;
typedef scalar_t__ OM_uint32 ;


 int COL_DESC ;
 int COL_NAME ;
 int COL_OID ;
 int COL_SASL ;
 scalar_t__ GSS_S_COMPLETE ;
 int errx (int,char*) ;
 scalar_t__ gss_indicate_mechs (scalar_t__*,TYPE_2__**) ;
 int gss_inquire_saslname_for_mech (scalar_t__*,int *,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ gss_oid_to_str (scalar_t__*,int *,TYPE_1__*) ;
 int gss_release_buffer (scalar_t__*,TYPE_1__*) ;
 int gss_release_oid_set (scalar_t__*,TYPE_2__**) ;
 int printf (char*) ;
 int rtbl_add_column (int *,int ,int ) ;
 int rtbl_add_column_entryv (int *,int ,char*,int,char*) ;
 int * rtbl_create () ;
 int rtbl_destroy (int *) ;
 int rtbl_format (int *,int ) ;
 int rtbl_set_separator (int *,char*) ;
 int stdout ;

int
supported_mechanisms(void *argptr, int argc, char **argv)
{
    OM_uint32 maj_stat, min_stat;
    gss_OID_set mechs;
    rtbl_t ct;
    size_t i;

    maj_stat = gss_indicate_mechs(&min_stat, &mechs);
    if (maj_stat != GSS_S_COMPLETE)
 errx(1, "gss_indicate_mechs failed");

    printf("Supported mechanisms:\n");

    ct = rtbl_create();
    if (ct == ((void*)0))
 errx(1, "rtbl_create");

    rtbl_set_separator(ct, "  ");
    rtbl_add_column(ct, COL_OID, 0);
    rtbl_add_column(ct, COL_NAME, 0);
    rtbl_add_column(ct, COL_DESC, 0);
    rtbl_add_column(ct, COL_SASL, 0);

    for (i = 0; i < mechs->count; i++) {
 gss_buffer_desc str, sasl_name, mech_name, mech_desc;

 maj_stat = gss_oid_to_str(&min_stat, &mechs->elements[i], &str);
 if (maj_stat != GSS_S_COMPLETE)
     errx(1, "gss_oid_to_str failed");

 rtbl_add_column_entryv(ct, COL_OID, "%.*s",
          (int)str.length, (char *)str.value);
 gss_release_buffer(&min_stat, &str);

 (void)gss_inquire_saslname_for_mech(&min_stat,
         &mechs->elements[i],
         &sasl_name,
         &mech_name,
         &mech_desc);

 rtbl_add_column_entryv(ct, COL_NAME, "%.*s",
          (int)mech_name.length, (char *)mech_name.value);
 rtbl_add_column_entryv(ct, COL_DESC, "%.*s",
          (int)mech_desc.length, (char *)mech_desc.value);
 rtbl_add_column_entryv(ct, COL_SASL, "%.*s",
          (int)sasl_name.length, (char *)sasl_name.value);

 gss_release_buffer(&min_stat, &mech_name);
 gss_release_buffer(&min_stat, &mech_desc);
 gss_release_buffer(&min_stat, &sasl_name);

    }
    gss_release_oid_set(&min_stat, &mechs);

    rtbl_format(ct, stdout);
    rtbl_destroy(ct);

    return 0;
}
