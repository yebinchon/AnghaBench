
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_const_realm ;


 int KRB5_TGS_NAME ;
 int krb5_make_principal (int ,int *,int ,int ,int ,int *) ;
 int krb5_parse_name (int ,char const*,int *) ;
 int krb5_principal_get_realm (int ,int ) ;

__attribute__((used)) static krb5_error_code
get_server(krb5_context context,
    krb5_principal client,
    const char *server,
    krb5_principal *princ)
{
    krb5_const_realm realm;
    if(server)
 return krb5_parse_name(context, server, princ);

    realm = krb5_principal_get_realm(context, client);
    return krb5_make_principal(context, princ, realm,
          KRB5_TGS_NAME, realm, ((void*)0));
}
