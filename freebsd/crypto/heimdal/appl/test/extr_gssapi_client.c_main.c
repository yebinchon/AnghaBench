
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;


 int client_doit (char*,int,int ,int ) ;
 int client_setup (int *,int*,char**) ;
 int proto ;
 int service ;

int
main(int argc, char **argv)
{
    krb5_context context;
    int port = client_setup(&context, &argc, argv);
    return client_doit (argv[argc], port, service, proto);
}
