
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int * krb5_prompter_fct ;
typedef int krb5_principal ;
typedef int krb5_keytab ;
typedef int krb5_get_init_creds_opt ;
typedef int krb5_error_code ;
struct TYPE_6__ {int client; } ;
typedef TYPE_1__ krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache ;


 int FALSE ;
 int KADM5_BAD_PASSWORD ;



 int krb5_cc_initialize (int ,int ,int ) ;
 int krb5_cc_new_unique (int ,int ,int *,int *) ;
 int krb5_cc_store_cred (int ,int ,TYPE_1__*) ;
 int krb5_cc_type_memory ;
 int krb5_free_cred_contents (int ,TYPE_1__*) ;
 int krb5_get_init_creds_keytab (int ,TYPE_1__*,int ,int ,int ,char const*,int *) ;
 int krb5_get_init_creds_opt_alloc (int ,int **) ;
 int krb5_get_init_creds_opt_free (int ,int *) ;
 int krb5_get_init_creds_opt_set_default_flags (int ,char*,int ,int *) ;
 int krb5_get_init_creds_opt_set_forwardable (int *,int ) ;
 int krb5_get_init_creds_opt_set_proxiable (int *,int ) ;
 int krb5_get_init_creds_password (int ,TYPE_1__*,int ,char const*,int *,int *,int ,char const*,int *) ;
 int krb5_kt_close (int ,int ) ;
 int krb5_kt_default (int ,int *) ;
 int krb5_kt_resolve (int ,char const*,int *) ;
 int krb5_principal_get_realm (int ,int ) ;

__attribute__((used)) static krb5_error_code
get_new_cache(krb5_context context,
       krb5_principal client,
       const char *password,
       krb5_prompter_fct prompter,
       const char *keytab,
       const char *server_name,
       krb5_ccache *ret_cache)
{
    krb5_error_code ret;
    krb5_creds cred;
    krb5_get_init_creds_opt *opt;
    krb5_ccache id;

    ret = krb5_get_init_creds_opt_alloc (context, &opt);
    if (ret)
 return ret;

    krb5_get_init_creds_opt_set_default_flags(context, "kadmin",
           krb5_principal_get_realm(context,
               client),
           opt);


    krb5_get_init_creds_opt_set_forwardable (opt, FALSE);
    krb5_get_init_creds_opt_set_proxiable (opt, FALSE);

    if(password == ((void*)0) && prompter == ((void*)0)) {
 krb5_keytab kt;
 if(keytab == ((void*)0))
     ret = krb5_kt_default(context, &kt);
 else
     ret = krb5_kt_resolve(context, keytab, &kt);
 if(ret) {
     krb5_get_init_creds_opt_free(context, opt);
     return ret;
 }
 ret = krb5_get_init_creds_keytab (context,
       &cred,
       client,
       kt,
       0,
       server_name,
       opt);
 krb5_kt_close(context, kt);
    } else {
 ret = krb5_get_init_creds_password (context,
         &cred,
         client,
         password,
         prompter,
         ((void*)0),
         0,
         server_name,
         opt);
    }
    krb5_get_init_creds_opt_free(context, opt);
    switch(ret){
    case 0:
 break;
    case 128:
    case 130:
    case 129:
 return KADM5_BAD_PASSWORD;
    default:
 return ret;
    }
    ret = krb5_cc_new_unique(context, krb5_cc_type_memory, ((void*)0), &id);
    if(ret)
 return ret;
    ret = krb5_cc_initialize (context, id, cred.client);
    if (ret)
 return ret;
    ret = krb5_cc_store_cred (context, id, &cred);
    if (ret)
 return ret;
    krb5_free_cred_contents (context, &cred);
    *ret_cache = id;
    return 0;
}
