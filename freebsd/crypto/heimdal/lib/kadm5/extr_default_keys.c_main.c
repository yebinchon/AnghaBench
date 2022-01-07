
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 int errx (int,char*) ;
 int krb5_err (int ,scalar_t__,int,char*) ;
 int krb5_free_context (int ) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_init_context (int *) ;
 scalar_t__ krb5_parse_name (int ,char*,int *) ;
 int parse_file (int ,int ,int) ;

int
main(int argc, char **argv)
{
    krb5_error_code ret;
    krb5_context context;
    krb5_principal principal;

    ret = krb5_init_context(&context);
    if (ret)
 errx(1, "krb5_init_context");

    ret = krb5_parse_name(context, "lha@SU.SE", &principal);
    if (ret)
 krb5_err(context, ret, 1, "krb5_parse_name");

    parse_file(context, principal, 0);
    parse_file(context, principal, 1);

    krb5_free_principal(context, principal);

    krb5_free_context(context);

    return 0;
}
