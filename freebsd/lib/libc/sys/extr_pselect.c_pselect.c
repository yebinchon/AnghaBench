
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int sigset_t ;
typedef int fd_set ;


 size_t INTERPOS_pselect ;
 scalar_t__* __libc_interposing ;
 int stub1 (int,int *,int *,int *,struct timespec const*,int const*) ;

int
pselect(int n, fd_set *rs, fd_set *ws, fd_set *es, const struct timespec *t,
    const sigset_t *s)
{

 return (((int (*)(int, fd_set *, fd_set *, fd_set *,
     const struct timespec *, const sigset_t *))
     __libc_interposing[INTERPOS_pselect])(n, rs, ws, es, t, s));
}
