
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;
struct iovec {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ __sys_writev (int,struct iovec const*,int) ;
 struct pthread* _get_curthread () ;
 int _thr_cancel_enter (struct pthread*) ;
 int _thr_cancel_leave (struct pthread*,int) ;

__attribute__((used)) static ssize_t
__thr_writev(int fd, const struct iovec *iov, int iovcnt)
{
 struct pthread *curthread;
 ssize_t ret;

 curthread = _get_curthread();
 _thr_cancel_enter(curthread);
 ret = __sys_writev(fd, iov, iovcnt);
 _thr_cancel_leave(curthread, (ret <= 0));
 return (ret);
}
