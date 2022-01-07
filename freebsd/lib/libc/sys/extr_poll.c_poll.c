
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int dummy; } ;
typedef int nfds_t ;


 size_t INTERPOS_poll ;
 scalar_t__* __libc_interposing ;
 int stub1 (struct pollfd*,int ,int) ;

int
poll(struct pollfd pfd[], nfds_t nfds, int timeout)
{

 return (((int (*)(struct pollfd *, nfds_t, int))
     __libc_interposing[INTERPOS_poll])(pfd, nfds, timeout));
}
