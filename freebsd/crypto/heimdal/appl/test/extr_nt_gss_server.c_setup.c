
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;


 int args ;
 int common_setup (int *,int*,char**,int (*) (int,int ,int )) ;
 int num_args ;
 int usage (int,int ,int ) ;

__attribute__((used)) static int
setup(krb5_context *context, int argc, char **argv)
{
    int port = common_setup(context, &argc, argv, usage);
    if(argv[argc] != ((void*)0))
 usage(1, args, num_args);
    return port;
}
