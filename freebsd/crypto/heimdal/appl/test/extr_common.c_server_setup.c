
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 int args ;
 int common_setup (int *,int*,char**,int (*) (int,int ,int )) ;
 int keytab ;
 int * keytab_str ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 scalar_t__ krb5_kt_default (int ,int *) ;
 scalar_t__ krb5_kt_resolve (int ,int *,int *) ;
 int num_args ;
 int server_usage (int,int ,int ) ;

int
server_setup(krb5_context *context, int argc, char **argv)
{
    int port = common_setup(context, &argc, argv, server_usage);
    krb5_error_code ret;

    if(argv[argc] != ((void*)0))
 server_usage(1, args, num_args);
    if (keytab_str != ((void*)0))
 ret = krb5_kt_resolve (*context, keytab_str, &keytab);
    else
 ret = krb5_kt_default (*context, &keytab);
    if (ret)
 krb5_err (*context, 1, ret, "krb5_kt_resolve/default");
    return port;
}
