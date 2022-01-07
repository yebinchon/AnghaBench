
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int context ;
 int doit (int,int ) ;
 int server_setup (int *,int,char**) ;
 int service ;

int
main(int argc, char **argv)
{
    int port = server_setup(&context, argc, argv);
    return doit (port, service);
}
