
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tmp_cred ;
typedef int krb5_realm ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_6__ {int server; int client; } ;
typedef TYPE_1__ krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache ;


 int KRB5_GC_CACHED ;
 int KRB5_TGS_NAME ;
 scalar_t__ krb5_cc_get_principal (int ,int ,int *) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_get_credentials (int ,int ,int ,TYPE_1__*,TYPE_1__**) ;
 scalar_t__ krb5_make_principal (int ,int *,int ,int ,int ,int *) ;
 int memset (TYPE_1__*,int ,int) ;

krb5_error_code
_krb5_get_krbtgt(krb5_context context,
   krb5_ccache id,
   krb5_realm realm,
   krb5_creds **cred)
{
    krb5_error_code ret;
    krb5_creds tmp_cred;

    memset(&tmp_cred, 0, sizeof(tmp_cred));

    ret = krb5_cc_get_principal(context, id, &tmp_cred.client);
    if (ret)
 return ret;

    ret = krb5_make_principal(context,
         &tmp_cred.server,
         realm,
         KRB5_TGS_NAME,
         realm,
         ((void*)0));
    if(ret) {
 krb5_free_principal(context, tmp_cred.client);
 return ret;
    }
    ret = krb5_get_credentials(context,
          KRB5_GC_CACHED,
          id,
          &tmp_cred,
          cred);
    krb5_free_principal(context, tmp_cred.client);
    krb5_free_principal(context, tmp_cred.server);
    if(ret)
 return ret;
    return 0;
}
