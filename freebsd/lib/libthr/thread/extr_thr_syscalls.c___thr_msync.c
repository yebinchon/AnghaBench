
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 int __sys_msync (void*,size_t,int) ;
 struct pthread* _get_curthread () ;
 int _thr_cancel_enter2 (struct pthread*,int ) ;
 int _thr_cancel_leave (struct pthread*,int) ;

__attribute__((used)) static int
__thr_msync(void *addr, size_t len, int flags)
{
 struct pthread *curthread;
 int ret;

 curthread = _get_curthread();
 _thr_cancel_enter2(curthread, 0);
 ret = __sys_msync(addr, len, flags);
 _thr_cancel_leave(curthread, 1);

 return (ret);
}
