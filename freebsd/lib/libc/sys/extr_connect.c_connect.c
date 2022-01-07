
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 size_t INTERPOS_connect ;
 scalar_t__* __libc_interposing ;
 int stub1 (int,struct sockaddr const*,int ) ;

int
connect(int s, const struct sockaddr *addr, socklen_t addrlen)
{

 return (((int (*)(int, const struct sockaddr *, socklen_t))
     __libc_interposing[INTERPOS_connect])(s, addr, addrlen));
}
