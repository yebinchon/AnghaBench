
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 size_t INTERPOS_sendto ;
 scalar_t__* __libc_interposing ;
 int stub1 (int,void const*,size_t,int,struct sockaddr const*,socklen_t) ;

ssize_t
send(int s, const void *msg, size_t len, int flags)
{




 return (((ssize_t (*)(int, const void *, size_t, int,
     const struct sockaddr *, socklen_t))
     __libc_interposing[INTERPOS_sendto])(s, msg, len, flags,
     ((void*)0), 0));
}
