
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {void* sa_handler; int sa_mask; scalar_t__ sa_flags; } ;
typedef int krb5_error_code ;
typedef int heim_sipc ;


 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 void* SIG_IGN ;
 int daemon (int ,int ) ;
 scalar_t__ detach_from_console ;
 int errx (int,char*,int) ;
 int heim_ipc_main () ;
 int heim_sipc_launchd_mach_init (int ,int ,int *,int *) ;
 int heim_sipc_service_unix (int ,int ,int *,int *) ;
 int kcm_configure (int,char**) ;
 int kcm_context ;
 int kcm_service ;
 int krb5_free_context (int ) ;
 int krb5_init_context (int *) ;
 scalar_t__ launchd_flag ;
 int pidfile (int *) ;
 int service_name ;
 int setprogname (char*) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int signal (int ,void*) ;
 void* sigterm ;
 void* sigusr1 ;
 void* sigusr2 ;

int
main(int argc, char **argv)
{
    krb5_error_code ret;
    setprogname(argv[0]);

    ret = krb5_init_context(&kcm_context);
    if (ret) {
 errx (1, "krb5_init_context failed: %d", ret);
 return ret;
    }

    kcm_configure(argc, argv);
    signal(SIGINT, sigterm);
    signal(SIGTERM, sigterm);
    signal(SIGUSR1, sigusr1);
    signal(SIGUSR2, sigusr2);
    signal(SIGPIPE, SIG_IGN);





    pidfile(((void*)0));

    if (launchd_flag) {
 heim_sipc mach;
 heim_sipc_launchd_mach_init(service_name, kcm_service, ((void*)0), &mach);
    } else {
 heim_sipc un;
 heim_sipc_service_unix(service_name, kcm_service, ((void*)0), &un);
    }

    heim_ipc_main();

    krb5_free_context(kcm_context);
    return 0;
}
