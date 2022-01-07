
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef int krb5_keytab ;
typedef int krb5_get_init_creds_opt ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int keytab_buf ;


 int IPROP_NAME ;
 int KRB5_NT_SRV_HST ;
 int asprintf (char**,char*,int ,char const*) ;
 int free (char*) ;
 scalar_t__ krb5_cc_initialize (int ,int ,int ) ;
 scalar_t__ krb5_cc_new_unique (int ,int ,int *,int *) ;
 scalar_t__ krb5_cc_store_cred (int ,int ,int *) ;
 int krb5_cc_type_memory ;
 int krb5_err (int ,int,scalar_t__,char*,...) ;
 int krb5_errx (int ,int,char*) ;
 int krb5_free_cred_contents (int ,int *) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_get_init_creds_keytab (int ,int *,int ,int ,int ,char*,int *) ;
 scalar_t__ krb5_get_init_creds_opt_alloc (int ,int **) ;
 int krb5_get_init_creds_opt_free (int ,int *) ;
 scalar_t__ krb5_kt_close (int ,int ) ;
 scalar_t__ krb5_kt_default_name (int ,char*,int) ;
 scalar_t__ krb5_kt_resolve (int ,char const*,int *) ;
 scalar_t__ krb5_sname_to_principal (int ,int ,int ,int ,int *) ;
 int slave_str ;

__attribute__((used)) static void
get_creds(krb5_context context, const char *keytab_str,
   krb5_ccache *cache, const char *serverhost)
{
    krb5_keytab keytab;
    krb5_principal client;
    krb5_error_code ret;
    krb5_get_init_creds_opt *init_opts;
    krb5_creds creds;
    char *server;
    char keytab_buf[256];

    if (keytab_str == ((void*)0)) {
 ret = krb5_kt_default_name (context, keytab_buf, sizeof(keytab_buf));
 if (ret)
     krb5_err (context, 1, ret, "krb5_kt_default_name");
 keytab_str = keytab_buf;
    }

    ret = krb5_kt_resolve(context, keytab_str, &keytab);
    if(ret)
 krb5_err(context, 1, ret, "%s", keytab_str);


    ret = krb5_sname_to_principal (context, slave_str, IPROP_NAME,
       KRB5_NT_SRV_HST, &client);
    if (ret) krb5_err(context, 1, ret, "krb5_sname_to_principal");

    ret = krb5_get_init_creds_opt_alloc(context, &init_opts);
    if (ret) krb5_err(context, 1, ret, "krb5_get_init_creds_opt_alloc");

    asprintf (&server, "%s/%s", IPROP_NAME, serverhost);
    if (server == ((void*)0))
 krb5_errx (context, 1, "malloc: no memory");

    ret = krb5_get_init_creds_keytab(context, &creds, client, keytab,
         0, server, init_opts);
    free (server);
    krb5_get_init_creds_opt_free(context, init_opts);
    if(ret) krb5_err(context, 1, ret, "krb5_get_init_creds");

    ret = krb5_kt_close(context, keytab);
    if(ret) krb5_err(context, 1, ret, "krb5_kt_close");

    ret = krb5_cc_new_unique(context, krb5_cc_type_memory, ((void*)0), cache);
    if(ret) krb5_err(context, 1, ret, "krb5_cc_new_unique");

    ret = krb5_cc_initialize(context, *cache, client);
    if(ret) krb5_err(context, 1, ret, "krb5_cc_initialize");

    ret = krb5_cc_store_cred(context, *cache, &creds);
    if(ret) krb5_err(context, 1, ret, "krb5_cc_store_cred");

    krb5_free_cred_contents(context, &creds);
    krb5_free_principal(context, client);
}
