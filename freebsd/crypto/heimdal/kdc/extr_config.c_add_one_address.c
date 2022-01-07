
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_addresses ;


 int explicit_addresses ;
 int krb5_append_addresses (int ,int *,int *) ;
 int krb5_copy_addresses (int ,int *,int *) ;
 int krb5_err (int ,int,scalar_t__,char*,char const*) ;
 int krb5_free_addresses (int ,int *) ;
 scalar_t__ krb5_parse_address (int ,char const*,int *) ;

__attribute__((used)) static void
add_one_address (krb5_context context, const char *str, int first)
{
    krb5_error_code ret;
    krb5_addresses tmp;

    ret = krb5_parse_address (context, str, &tmp);
    if (ret)
 krb5_err (context, 1, ret, "parse_address `%s'", str);
    if (first)
 krb5_copy_addresses(context, &tmp, &explicit_addresses);
    else
 krb5_append_addresses(context, &explicit_addresses, &tmp);
    krb5_free_addresses (context, &tmp);
}
