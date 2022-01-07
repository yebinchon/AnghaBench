
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;
struct pollfd {int dummy; } ;


 int __sys_poll (struct pollfd*,unsigned int,int) ;
 struct pthread* _get_curthread () ;
 int _thr_cancel_enter (struct pthread*) ;
 int _thr_cancel_leave (struct pthread*,int) ;

__attribute__((used)) static int
__thr_poll(struct pollfd *fds, unsigned int nfds, int timeout)
{
 struct pthread *curthread;
 int ret;

 curthread = _get_curthread();
 _thr_cancel_enter(curthread);
 ret = __sys_poll(fds, nfds, timeout);
 _thr_cancel_leave(curthread, ret == -1);

 return (ret);
}
