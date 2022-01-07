
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;
typedef int heim_sipc ;


 int args ;
 int config ;
 int exit (int ) ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 int heim_ipc_main () ;
 int heim_sipc_launchd_mach_init (char*,int ,int ,int *) ;
 int heim_sipc_service_unix (char*,int ,int *,int *) ;
 int heim_sipc_timeout (int) ;
 scalar_t__ help_flag ;
 int kdc_openlog (int ,char*,int ) ;
 int krb5_err (int ,int,int,char*) ;
 int krb5_errx (int ,int,char*) ;
 int krb5_init_context (int *) ;
 int krb5_kdc_get_config (int ,int *) ;
 int krb5_kdc_set_dbinfo (int ,int ) ;
 int ntlm_service ;
 int num_args ;
 int print_version (int *) ;
 int setprogname (char*) ;
 int usage (int) ;
 scalar_t__ version_flag ;

int
main(int argc, char **argv)
{
    krb5_context context;
    int ret, optidx = 0;

    setprogname(argv[0]);

    if (getarg(args, num_args, argc, argv, &optidx))
 usage(1);

    if (help_flag)
 usage(0);

    if (version_flag) {
 print_version(((void*)0));
 exit(0);
    }

    ret = krb5_init_context(&context);
    if (ret)
 krb5_errx(context, 1, "krb5_init_context");

    ret = krb5_kdc_get_config(context, &config);
    if (ret)
 krb5_err(context, 1, ret, "krb5_kdc_default_config");

    kdc_openlog(context, "digest-service", config);

    ret = krb5_kdc_set_dbinfo(context, config);
    if (ret)
 krb5_err(context, 1, ret, "krb5_kdc_set_dbinfo");
    {
 heim_sipc un;
 heim_sipc_service_unix("org.h5l.ntlm-service", ntlm_service, ((void*)0), &un);
    }

    heim_ipc_main();
    return 0;
}
