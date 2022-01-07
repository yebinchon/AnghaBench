
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int socklen_t ;


 size_t INTERPOS_recvfrom ;
 scalar_t__* __libc_interposing ;
 int stub1 (int,void*,size_t,int,struct sockaddr*,int *) ;

ssize_t
recvfrom(int s, void *buf, size_t len, int flags,
    struct sockaddr * __restrict from, socklen_t * __restrict fromlen)
{

 return (((ssize_t (*)(int, void *, size_t, int,
     struct sockaddr *, socklen_t *))
     __libc_interposing[INTERPOS_recvfrom])(s, buf, len, flags,
    from, fromlen));
}
