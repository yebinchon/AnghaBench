
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct pthread {int dummy; } ;
typedef int socklen_t ;


 int __sys_accept4 (int,struct sockaddr*,int *,int) ;
 struct pthread* _get_curthread () ;
 int _thr_cancel_enter (struct pthread*) ;
 int _thr_cancel_leave (struct pthread*,int) ;

__attribute__((used)) static int
__thr_accept4(int s, struct sockaddr *addr, socklen_t *addrlen, int flags)
{
 struct pthread *curthread;
 int ret;

 curthread = _get_curthread();
 _thr_cancel_enter(curthread);
 ret = __sys_accept4(s, addr, addrlen, flags);
 _thr_cancel_leave(curthread, ret == -1);

  return (ret);
}
