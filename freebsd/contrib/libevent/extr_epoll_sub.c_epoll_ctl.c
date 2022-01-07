
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct epoll_event {int dummy; } ;


 int __NR_epoll_ctl ;
 int syscall (int ,int,int,int,struct epoll_event*) ;

int
epoll_ctl(int epfd, int op, int fd, struct epoll_event *event)
{

 return (syscall(__NR_epoll_ctl, epfd, op, fd, event));
}
