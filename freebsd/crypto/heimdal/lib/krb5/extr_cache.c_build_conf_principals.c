
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_4__ {int client; int server; } ;
typedef TYPE_1__ krb5_creds ;
typedef int krb5_context ;
typedef scalar_t__ krb5_const_principal ;
typedef int krb5_ccache ;


 int KRB5_CONF_NAME ;
 int KRB5_REALM_NAME ;
 int free (char*) ;
 scalar_t__ krb5_cc_get_principal (int ,int ,int *) ;
 scalar_t__ krb5_copy_principal (int ,int ,int *) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_make_principal (int ,int *,int ,int ,char const*,char*,int *) ;
 scalar_t__ krb5_unparse_name (int ,scalar_t__,char**) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static krb5_error_code
build_conf_principals(krb5_context context, krb5_ccache id,
        krb5_const_principal principal,
        const char *name, krb5_creds *cred)
{
    krb5_principal client;
    krb5_error_code ret;
    char *pname = ((void*)0);

    memset(cred, 0, sizeof(*cred));

    ret = krb5_cc_get_principal(context, id, &client);
    if (ret)
 return ret;

    if (principal) {
 ret = krb5_unparse_name(context, principal, &pname);
 if (ret)
     return ret;
    }

    ret = krb5_make_principal(context, &cred->server,
         KRB5_REALM_NAME,
         KRB5_CONF_NAME, name, pname, ((void*)0));
    free(pname);
    if (ret) {
 krb5_free_principal(context, client);
 return ret;
    }
    ret = krb5_copy_principal(context, client, &cred->client);
    krb5_free_principal(context, client);
    return ret;
}
