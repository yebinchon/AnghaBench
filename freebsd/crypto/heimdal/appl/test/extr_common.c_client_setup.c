
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;


 int args ;
 int client_usage (int,int ,int ) ;
 int common_setup (int *,int*,char**,int (*) (int,int ,int )) ;
 int num_args ;

int
client_setup(krb5_context *context, int *argc, char **argv)
{
    int optind = *argc;
    int port = common_setup(context, &optind, argv, client_usage);
    if(*argc - optind != 1)
 client_usage(1, args, num_args);
    *argc = optind;
    return port;
}
