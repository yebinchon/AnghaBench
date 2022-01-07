
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDIN_FILENO ;
 int mini_inetd (int,int *) ;
 int proto (int ,char const*) ;

__attribute__((used)) static int
doit (int port, const char *service)
{
    mini_inetd (port, ((void*)0));

    return proto (STDIN_FILENO, service);
}
