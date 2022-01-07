
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct pthread {int dummy; } ;
typedef int fd_set ;


 int __sys_select (int,int *,int *,int *,struct timeval*) ;
 struct pthread* _get_curthread () ;
 int _thr_cancel_enter (struct pthread*) ;
 int _thr_cancel_leave (struct pthread*,int) ;

__attribute__((used)) static int
__thr_select(int numfds, fd_set *readfds, fd_set *writefds, fd_set *exceptfds,
 struct timeval *timeout)
{
 struct pthread *curthread;
 int ret;

 curthread = _get_curthread();
 _thr_cancel_enter(curthread);
 ret = __sys_select(numfds, readfds, writefds, exceptfds, timeout);
 _thr_cancel_leave(curthread, ret == -1);
 return (ret);
}
