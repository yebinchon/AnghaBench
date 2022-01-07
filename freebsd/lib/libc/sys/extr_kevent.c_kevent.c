
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct kevent {int dummy; } ;


 size_t INTERPOS_kevent ;
 scalar_t__* __libc_interposing ;
 int stub1 (int,struct kevent const*,int,struct kevent*,int,struct timespec const*) ;

int
kevent(int kq, const struct kevent *changelist, int nchanges,
    struct kevent *eventlist, int nevents, const struct timespec *timeout)
{

 return (((int (*)(int, const struct kevent *, int,
     struct kevent *, int, const struct timespec *))
     __libc_interposing[INTERPOS_kevent])(kq, changelist, nchanges,
    eventlist, nevents, timeout));
}
