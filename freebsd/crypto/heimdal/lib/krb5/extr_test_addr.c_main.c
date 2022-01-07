
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 int SET_INVALID_PARAM_HANDLER ;
 int check_truncation (int ,char*) ;
 int errx (int,char*,scalar_t__) ;
 int krb5_free_context (int ) ;
 scalar_t__ krb5_init_context (int *) ;
 int match_addr (int ,char*,char*,int) ;
 int print_addr (int ,char*) ;
 int setprogname (char*) ;

int
main(int argc, char **argv)
{
    krb5_context context;
    krb5_error_code ret;

    SET_INVALID_PARAM_HANDLER;

    setprogname(argv[0]);

    ret = krb5_init_context(&context);
    if (ret)
 errx (1, "krb5_init_context failed: %d", ret);

    print_addr(context, "RANGE:127.0.0.0/8");
    print_addr(context, "RANGE:127.0.0.0/24");
    print_addr(context, "RANGE:IPv4:127.0.0.0-IPv4:127.0.0.255");
    print_addr(context, "RANGE:130.237.237.4/29");







    check_truncation(context, "IPv4:127.0.0.0");
    check_truncation(context, "RANGE:IPv4:127.0.0.0-IPv4:127.0.0.255");
    match_addr(context, "RANGE:127.0.0.0/8", "inet:127.0.0.0", 1);
    match_addr(context, "RANGE:127.0.0.0/8", "inet:127.255.255.255", 1);
    match_addr(context, "RANGE:127.0.0.0/8", "inet:128.0.0.0", 0);

    match_addr(context, "RANGE:130.237.237.8/29", "inet:130.237.237.7", 0);
    match_addr(context, "RANGE:130.237.237.8/29", "inet:130.237.237.8", 1);
    match_addr(context, "RANGE:130.237.237.8/29", "inet:130.237.237.15", 1);
    match_addr(context, "RANGE:130.237.237.8/29", "inet:130.237.237.16", 0);

    krb5_free_context(context);

    return 0;
}
