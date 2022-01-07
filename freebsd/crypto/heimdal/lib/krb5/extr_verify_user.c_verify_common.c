
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_verify_init_creds_opt ;
typedef int krb5_principal ;
typedef int krb5_keytab ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_creds ;
typedef int krb5_context ;
typedef int * krb5_ccache ;
typedef int krb5_boolean ;


 int KRB5_NT_SRV_HST ;
 int krb5_cc_close (int ,int *) ;
 scalar_t__ krb5_cc_default (int ,int **) ;
 scalar_t__ krb5_cc_initialize (int ,int *,int ) ;
 scalar_t__ krb5_cc_store_cred (int ,int *,int *) ;
 int krb5_free_cred_contents (int ,int *) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_sname_to_principal (int ,int *,char const*,int ,int *) ;
 scalar_t__ krb5_verify_init_creds (int ,int *,int ,int ,int *,int *) ;
 int krb5_verify_init_creds_opt_init (int *) ;
 int krb5_verify_init_creds_opt_set_ap_req_nofail (int *,int ) ;

__attribute__((used)) static krb5_error_code
verify_common (krb5_context context,
        krb5_principal principal,
        krb5_ccache ccache,
        krb5_keytab keytab,
        krb5_boolean secure,
        const char *service,
        krb5_creds cred)
{
    krb5_error_code ret;
    krb5_principal server;
    krb5_verify_init_creds_opt vopt;
    krb5_ccache id;

    ret = krb5_sname_to_principal (context, ((void*)0), service, KRB5_NT_SRV_HST,
       &server);
    if(ret)
 return ret;

    krb5_verify_init_creds_opt_init(&vopt);
    krb5_verify_init_creds_opt_set_ap_req_nofail(&vopt, secure);

    ret = krb5_verify_init_creds(context,
     &cred,
     server,
     keytab,
     ((void*)0),
     &vopt);
    krb5_free_principal(context, server);
    if(ret)
 return ret;
    if(ccache == ((void*)0))
 ret = krb5_cc_default (context, &id);
    else
 id = ccache;
    if(ret == 0){
 ret = krb5_cc_initialize(context, id, principal);
 if(ret == 0){
     ret = krb5_cc_store_cred(context, id, &cred);
 }
 if(ccache == ((void*)0))
     krb5_cc_close(context, id);
    }
    krb5_free_cred_contents(context, &cred);
    return ret;
}
