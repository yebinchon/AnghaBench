
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINVAL ;
 int SOCK_CLOEXEC ;
 scalar_t__ errno ;
 int socket (int,int,int) ;

int
rk_socket(int domain, int type, int protocol)
{
    int s;
    s = socket (domain, type, protocol);






    return s;
}
