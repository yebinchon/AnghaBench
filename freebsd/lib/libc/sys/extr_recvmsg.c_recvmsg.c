
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int dummy; } ;
typedef int ssize_t ;


 size_t INTERPOS_recvmsg ;
 scalar_t__* __libc_interposing ;
 int stub1 (int,struct msghdr*,int) ;

ssize_t
recvmsg(int s, struct msghdr *msg, int flags)
{

 return (((int (*)(int, struct msghdr *, int))
     __libc_interposing[INTERPOS_recvmsg])(s, msg, flags));
}
