
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 int errx (int,char*,scalar_t__) ;
 int iov_test (int ) ;
 int krb5_free_context (int ) ;
 scalar_t__ krb5_init_context (int *) ;
 int krb_enc_test (int ) ;
 int printf (char*) ;
 int random_to_key (int ) ;
 int string_to_key_test (int ) ;
 scalar_t__ verbose ;

int
main(int argc, char **argv)
{
    krb5_error_code ret;
    krb5_context context;
    int val = 0;

    ret = krb5_init_context (&context);
    if (ret)
 errx (1, "krb5_init_context failed: %d", ret);

    val |= string_to_key_test(context);

    val |= krb_enc_test(context);
    val |= random_to_key(context);
    val |= iov_test(context);

    if (verbose && val == 0)
 printf("all ok\n");
    if (val)
 printf("tests failed\n");

    krb5_free_context(context);

    return val;
}
