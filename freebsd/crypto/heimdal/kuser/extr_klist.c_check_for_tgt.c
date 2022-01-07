
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_7__ {scalar_t__ endtime; } ;
struct TYPE_8__ {TYPE_1__ times; int server; int client; } ;
typedef TYPE_2__ krb5_creds ;
typedef int krb5_context ;
typedef int krb5_const_realm ;
typedef int krb5_ccache ;


 scalar_t__ KRB5_CC_END ;
 int KRB5_TGS_NAME ;
 int krb5_cc_clear_mcred (TYPE_2__*) ;
 scalar_t__ krb5_cc_retrieve_cred (int ,int ,int ,TYPE_2__*,TYPE_2__*) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_free_cred_contents (int ,TYPE_2__*) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_make_principal (int ,int *,int ,int ,int ,int *) ;
 int krb5_principal_get_realm (int ,int ) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int
check_for_tgt (krb5_context context,
        krb5_ccache ccache,
        krb5_principal principal,
        time_t *expiration)
{
    krb5_error_code ret;
    krb5_creds pattern;
    krb5_creds creds;
    krb5_const_realm client_realm;
    int expired;

    krb5_cc_clear_mcred(&pattern);

    client_realm = krb5_principal_get_realm(context, principal);

    ret = krb5_make_principal (context, &pattern.server,
          client_realm, KRB5_TGS_NAME, client_realm, ((void*)0));
    if (ret)
 krb5_err (context, 1, ret, "krb5_make_principal");
    pattern.client = principal;

    ret = krb5_cc_retrieve_cred (context, ccache, 0, &pattern, &creds);
    krb5_free_principal (context, pattern.server);
    if (ret) {
 if (ret == KRB5_CC_END)
     return 1;
 krb5_err (context, 1, ret, "krb5_cc_retrieve_cred");
    }

    expired = time(((void*)0)) > creds.times.endtime;

    if (expiration)
 *expiration = creds.times.endtime;

    krb5_free_cred_contents (context, &creds);

    return expired;
}
