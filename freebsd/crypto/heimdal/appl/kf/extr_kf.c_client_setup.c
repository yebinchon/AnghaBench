
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int s_port; } ;
typedef int krb5_context ;


 int KF_PORT_NAME ;
 int KF_PORT_NUM ;
 int args ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 int forwardable ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 scalar_t__ help_flag ;
 int htons (int) ;
 int krb5_config_get_bool (int ,int *,char*,char*,int *) ;
 int krb5_getportbyname (int ,int ,char*,int ) ;
 int krb5_init_context (int *) ;
 int num_args ;
 char* port_str ;
 int print_version (int *) ;
 struct servent* roken_getservbyname (char*,char*) ;
 int setprogname (char*) ;
 int strtol (char*,char**,int) ;
 int usage (int,int ,int ) ;
 scalar_t__ version_flag ;

__attribute__((used)) static int
client_setup(krb5_context *context, int *argc, char **argv)
{
    int optind = 0;
    int port = 0;
    int status;

    setprogname (argv[0]);

    status = krb5_init_context (context);
    if (status)
 errx(1, "krb5_init_context failed: %d", status);

    forwardable = krb5_config_get_bool (*context, ((void*)0),
     "libdefaults",
     "forwardable",
     ((void*)0));

    if (getarg (args, num_args, *argc, argv, &optind))
 usage(1, args, num_args);

    if(help_flag)
 usage (0, args, num_args);
    if(version_flag) {
 print_version(((void*)0));
 exit(0);
    }

    if(port_str) {
 struct servent *s = roken_getservbyname(port_str, "tcp");
 if(s)
     port = s->s_port;
 else {
     char *ptr;

     port = strtol (port_str, &ptr, 10);
     if (port == 0 && ptr == port_str)
  errx (1, "Bad port `%s'", port_str);
     port = htons(port);
 }
    }

    if (port == 0)
 port = krb5_getportbyname (*context, KF_PORT_NAME, "tcp", KF_PORT_NUM);

    if(*argc - optind < 1)
        usage(1, args, num_args);
    *argc = optind;

    return port;
}
