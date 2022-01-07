
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_log_facility ;


 int LOG_AUTH ;
 int LOG_ODELAY ;
 int LOG_PID ;
 int closelog () ;
 int context ;
 int doit (int,int ) ;
 int execl (int *,char*,char*,int ,char*,int *) ;
 int krb5_err (int ,int,int,char*) ;
 int krb5_openlog (int ,char*,int **) ;
 int krb5_set_warn_dest (int ,int *) ;
 int krb5_tkfile ;
 int * regpag_str ;
 int roken_openlog (char*,int,int ) ;
 int server_setup (int *,int,char**) ;
 int service ;
 int setprogname (char*) ;

int
main(int argc, char **argv)
{
    int port;
    int ret;
    krb5_log_facility *fac;

    setprogname (argv[0]);
    roken_openlog (argv[0], LOG_ODELAY | LOG_PID,LOG_AUTH);
    port = server_setup(&context, argc, argv);
    ret = krb5_openlog(context, "kfd", &fac);
    if(ret) krb5_err(context, 1, ret, "krb5_openlog");
    ret = krb5_set_warn_dest(context, fac);
    if(ret) krb5_err(context, 1, ret, "krb5_set_warn_dest");

    ret = doit (port, service);
    closelog();
    if (ret == 0 && regpag_str != ((void*)0))
        ret = execl(regpag_str, "regpag", "-t", krb5_tkfile, "-r", ((void*)0));
    return ret;
}
