
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int dummy; } ;
typedef int ssize_t ;


 size_t INTERPOS_sendmsg ;
 scalar_t__* __libc_interposing ;
 int stub1 (int,struct msghdr const*,int) ;

ssize_t
sendmsg(int s, const struct msghdr *msg, int flags)
{

 return (((int (*)(int, const struct msghdr *, int))
     __libc_interposing[INTERPOS_sendmsg])(s, msg, flags));
}
