
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * krb5_context ;


 int doit (int,int ) ;
 int service ;
 int setup (int **,int,char**) ;

int
main(int argc, char **argv)
{
    krb5_context context = ((void*)0);
    int port = setup(&context, argc, argv);
    return doit (port, service);
}
