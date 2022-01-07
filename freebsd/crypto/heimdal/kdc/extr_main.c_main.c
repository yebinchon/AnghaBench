
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {void* sa_handler; int sa_mask; scalar_t__ sa_flags; } ;
typedef int krb5_kdc_configuration ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 scalar_t__ KRB5_CONFIG_BADFORMAT ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIGXCPU ;
 void* SIG_IGN ;
 int bonjour_announce (int ,int *) ;
 int * configure (int ,int,char**) ;
 int daemon (int ,int ) ;
 scalar_t__ detach_from_console ;
 int errx (int,char*,...) ;
 int hdb_kt_ops ;
 int krb5_free_context (int ) ;
 scalar_t__ krb5_init_context (int *) ;
 scalar_t__ krb5_kt_register (int ,int *) ;
 int loop (int ,int *) ;
 int pidfile (int *) ;
 int setprogname (char*) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int signal (int ,void*) ;
 void* sigterm ;
 int switch_environment () ;

int
main(int argc, char **argv)
{
    krb5_error_code ret;
    krb5_context context;
    krb5_kdc_configuration *config;

    setprogname(argv[0]);

    ret = krb5_init_context(&context);
    if (ret == KRB5_CONFIG_BADFORMAT)
 errx (1, "krb5_init_context failed to parse configuration file");
    else if (ret)
 errx (1, "krb5_init_context failed: %d", ret);

    ret = krb5_kt_register(context, &hdb_kt_ops);
    if (ret)
 errx (1, "krb5_kt_register(HDB) failed: %d", ret);

    config = configure(context, argc, argv);
    signal(SIGINT, sigterm);
    signal(SIGTERM, sigterm);
    pidfile(((void*)0));

    switch_environment();

    loop(context, config);
    krb5_free_context(context);
    return 0;
}
