
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int * krb5_ccache ;


 scalar_t__ krb5_cc_cache_match (int ,int ,int **) ;
 int krb5_cc_close (int ,int *) ;
 int krb5_err (int ,int,scalar_t__,char*,char const*) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_parse_name (int ,char const*,int *) ;

__attribute__((used)) static void
test_cache_find(krb5_context context, const char *principal, int find)
{
    krb5_principal client;
    krb5_error_code ret;
    krb5_ccache id = ((void*)0);

    ret = krb5_parse_name(context, principal, &client);
    if (ret)
 krb5_err(context, 1, ret, "parse_name for %s failed", principal);

    ret = krb5_cc_cache_match(context, client, &id);
    if (ret && find)
 krb5_err(context, 1, ret, "cc_cache_match for %s failed", principal);
    if (ret == 0 && !find)
 krb5_err(context, 1, ret, "cc_cache_match for %s found", principal);

    if (id)
 krb5_cc_close(context, id);
    krb5_free_principal(context, client);
}
