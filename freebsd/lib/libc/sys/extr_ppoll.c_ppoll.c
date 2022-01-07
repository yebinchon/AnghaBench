
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct pollfd {int dummy; } ;
typedef int sigset_t ;
typedef int nfds_t ;


 size_t INTERPOS_ppoll ;
 scalar_t__* __libc_interposing ;
 int stub1 (struct pollfd*,int ,struct timespec const*,int const*) ;

int
ppoll(struct pollfd pfd[], nfds_t nfds, const struct timespec *__restrict
    timeout, const sigset_t *__restrict newsigmask)
{

 return (((int (*)(struct pollfd *, nfds_t, const struct timespec *,
     const sigset_t *)) __libc_interposing[INTERPOS_ppoll])(pfd, nfds,
     timeout, newsigmask));
}
