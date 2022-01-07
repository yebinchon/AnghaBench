
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;
struct kevent {int dummy; } ;
typedef int pfd ;
typedef int fd_set ;


 int EVFILT_READ ;
 int EV_ADD ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,int,int ,int,int ,int ,int ) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int POLLIN ;
 int close (int) ;
 int kevent (int,struct kevent*,int,struct kevent*,int,int *) ;
 int kqueue () ;
 int os_memset (struct pollfd*,int ,int) ;
 int poll (struct pollfd*,int,int) ;
 int select (int,int *,int *,int *,int *) ;

void eloop_wait_for_read_sock(int sock)
{
}
