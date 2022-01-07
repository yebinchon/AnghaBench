
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 int check_set_time (int ) ;
 int errx (int,char*,scalar_t__) ;
 int krb5_free_context (int ) ;
 scalar_t__ krb5_init_context (int *) ;

int
main(int argc, char **argv)
{
    krb5_context context;
    krb5_error_code ret;

    ret = krb5_init_context(&context);
    if (ret)
 errx(1, "krb5_init_context %d", ret);

    check_set_time(context);
    check_set_time(context);
    check_set_time(context);
    check_set_time(context);
    check_set_time(context);

    krb5_free_context(context);

    return 0;
}
