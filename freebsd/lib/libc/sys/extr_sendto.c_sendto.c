
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int socklen_t ;


 size_t INTERPOS_sendto ;
 scalar_t__* __libc_interposing ;
 int stub1 (int,void const*,size_t,int,struct sockaddr const*,int ) ;

ssize_t
sendto(int s, const void *msg, size_t len, int flags,
    const struct sockaddr *to, socklen_t tolen)
{

 return (((ssize_t (*)(int, const void *, size_t, int,
     const struct sockaddr *, socklen_t))
     __libc_interposing[INTERPOS_sendto])(s, msg, len, flags,
     to, tolen));
}
