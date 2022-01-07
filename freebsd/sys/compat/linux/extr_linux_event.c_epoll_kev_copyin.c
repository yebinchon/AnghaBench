
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int dummy; } ;
struct epoll_copyin_args {int changelist; } ;


 int memcpy (struct kevent*,int,int) ;

__attribute__((used)) static int
epoll_kev_copyin(void *arg, struct kevent *kevp, int count)
{
 struct epoll_copyin_args *args;

 args = (struct epoll_copyin_args*) arg;

 memcpy(kevp, args->changelist, count * sizeof(*kevp));
 args->changelist += count;

 return (0);
}
