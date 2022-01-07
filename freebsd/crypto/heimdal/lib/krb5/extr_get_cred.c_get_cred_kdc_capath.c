
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int krb5_principal ;
typedef int krb5_kdc_flags ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_8__ {int server; int client; } ;
typedef TYPE_1__ krb5_creds ;
typedef int krb5_context ;
typedef int * krb5_const_realm ;
typedef int krb5_ccache ;
typedef int Ticket ;


 scalar_t__ KRB5KDC_ERR_S_PRINCIPAL_UNKNOWN ;
 scalar_t__ get_cred_kdc_capath_worker (int ,int ,int ,TYPE_1__*,int *,int ,int *,TYPE_1__**,TYPE_1__***) ;
 int * krb5_config_get_string (int ,int *,char*,int *,int *,int *) ;
 int * krb5_principal_get_realm (int ,int ) ;
 scalar_t__ strcmp (int *,int *) ;

__attribute__((used)) static krb5_error_code
get_cred_kdc_capath(krb5_context context,
      krb5_kdc_flags flags,
      krb5_ccache ccache,
      krb5_creds *in_creds,
      krb5_principal impersonate_principal,
      Ticket *second_ticket,
      krb5_creds **out_creds,
      krb5_creds ***ret_tgts)
{
    krb5_error_code ret;
    krb5_const_realm client_realm, server_realm, try_realm;

    client_realm = krb5_principal_get_realm(context, in_creds->client);
    server_realm = krb5_principal_get_realm(context, in_creds->server);

    try_realm = client_realm;
    ret = get_cred_kdc_capath_worker(context, flags, ccache, in_creds, try_realm,
                                     impersonate_principal, second_ticket, out_creds,
                                     ret_tgts);

    if (ret == KRB5KDC_ERR_S_PRINCIPAL_UNKNOWN) {
        try_realm = krb5_config_get_string(context, ((void*)0), "capaths",
                                           client_realm, server_realm, ((void*)0));

        if (try_realm != ((void*)0) && strcmp(try_realm, client_realm)) {
            ret = get_cred_kdc_capath_worker(context, flags, ccache, in_creds,
                                             try_realm, impersonate_principal,
                                             second_ticket, out_creds, ret_tgts);
        }
    }

    return ret;
}
