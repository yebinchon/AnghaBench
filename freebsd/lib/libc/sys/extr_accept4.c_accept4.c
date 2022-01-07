
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 size_t INTERPOS_accept4 ;
 scalar_t__* __libc_interposing ;
 int stub1 (int,struct sockaddr*,int *,int) ;

int
accept4(int s, struct sockaddr *addr, socklen_t *addrlen, int flags)
{

 return (((int (*)(int, struct sockaddr *, socklen_t *, int))
     __libc_interposing[INTERPOS_accept4])(s, addr, addrlen, flags));
}
