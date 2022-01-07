
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;


 int context ;
 int errx (int,char*,int) ;
 int krb5_free_context (int ) ;
 int krb5_init_context (int *) ;
 int setprogname (char*) ;
 int test_time () ;

int
main(int argc, char **argv)
{
    krb5_error_code ret;

    setprogname(argv[0]);

    ret = krb5_init_context(&context);
    if (ret)
 errx (1, "krb5_init_context failed: %d", ret);

    ret = 0;
    ret += test_time();

    krb5_free_context(context);

    return ret;
}
