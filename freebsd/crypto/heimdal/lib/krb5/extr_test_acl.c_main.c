
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 int errx (int,char*,scalar_t__) ;
 int krb5_free_context (int ) ;
 scalar_t__ krb5_init_context (int *) ;
 int setprogname (char*) ;
 int test_match_string (int ) ;

int
main(int argc, char **argv)
{
    krb5_context context;
    krb5_error_code ret;

    setprogname(argv[0]);

    ret = krb5_init_context(&context);
    if (ret)
 errx (1, "krb5_init_context failed: %d", ret);

    test_match_string(context);

    krb5_free_context(context);

    return 0;
}
