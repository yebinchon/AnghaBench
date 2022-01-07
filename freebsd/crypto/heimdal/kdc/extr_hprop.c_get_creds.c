
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef int krb5_preauthtype ;
typedef int krb5_keytab ;
typedef int krb5_get_init_creds_opt ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache ;


 int HPROP_NAME ;
 int KRB5_PADATA_ENC_TIMESTAMP ;
 int hdb_kt_ops ;
 scalar_t__ krb5_cc_initialize (int ,int ,int ) ;
 scalar_t__ krb5_cc_new_unique (int ,int ,int *,int *) ;
 scalar_t__ krb5_cc_store_cred (int ,int ,int *) ;
 int krb5_cc_type_memory ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_free_cred_contents (int ,int *) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_get_init_creds_keytab (int ,int *,int ,int ,int ,int *,int *) ;
 scalar_t__ krb5_get_init_creds_opt_alloc (int ,int **) ;
 int krb5_get_init_creds_opt_free (int ,int *) ;
 int krb5_get_init_creds_opt_set_preauth_list (int *,int *,int) ;
 scalar_t__ krb5_kt_close (int ,int ) ;
 scalar_t__ krb5_kt_register (int ,int *) ;
 scalar_t__ krb5_kt_resolve (int ,int ,int *) ;
 scalar_t__ krb5_make_principal (int ,int *,int *,char*,int ,int *) ;
 int ktname ;

__attribute__((used)) static void
get_creds(krb5_context context, krb5_ccache *cache)
{
    krb5_keytab keytab;
    krb5_principal client;
    krb5_error_code ret;
    krb5_get_init_creds_opt *init_opts;
    krb5_preauthtype preauth = KRB5_PADATA_ENC_TIMESTAMP;
    krb5_creds creds;

    ret = krb5_kt_register(context, &hdb_kt_ops);
    if(ret) krb5_err(context, 1, ret, "krb5_kt_register");

    ret = krb5_kt_resolve(context, ktname, &keytab);
    if(ret) krb5_err(context, 1, ret, "krb5_kt_resolve");

    ret = krb5_make_principal(context, &client, ((void*)0),
         "kadmin", HPROP_NAME, ((void*)0));
    if(ret) krb5_err(context, 1, ret, "krb5_make_principal");

    ret = krb5_get_init_creds_opt_alloc(context, &init_opts);
    if(ret) krb5_err(context, 1, ret, "krb5_get_init_creds_opt_alloc");
    krb5_get_init_creds_opt_set_preauth_list(init_opts, &preauth, 1);

    ret = krb5_get_init_creds_keytab(context, &creds, client, keytab, 0, ((void*)0), init_opts);
    if(ret) krb5_err(context, 1, ret, "krb5_get_init_creds");

    krb5_get_init_creds_opt_free(context, init_opts);

    ret = krb5_kt_close(context, keytab);
    if(ret) krb5_err(context, 1, ret, "krb5_kt_close");

    ret = krb5_cc_new_unique(context, krb5_cc_type_memory, ((void*)0), cache);
    if(ret) krb5_err(context, 1, ret, "krb5_cc_new_unique");

    ret = krb5_cc_initialize(context, *cache, client);
    if(ret) krb5_err(context, 1, ret, "krb5_cc_initialize");

    krb5_free_principal(context, client);

    ret = krb5_cc_store_cred(context, *cache, &creds);
    if(ret) krb5_err(context, 1, ret, "krb5_cc_store_cred");

    krb5_free_cred_contents(context, &creds);
}
