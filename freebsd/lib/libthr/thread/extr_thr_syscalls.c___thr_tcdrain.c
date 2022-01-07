
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 int __libc_tcdrain (int) ;
 struct pthread* _get_curthread () ;
 int _thr_cancel_enter (struct pthread*) ;
 int _thr_cancel_leave (struct pthread*,int) ;

__attribute__((used)) static int
__thr_tcdrain(int fd)
{
 struct pthread *curthread;
 int ret;

 curthread = _get_curthread();
 _thr_cancel_enter(curthread);
 ret = __libc_tcdrain(fd);
 _thr_cancel_leave(curthread, ret == -1);
 return (ret);
}
