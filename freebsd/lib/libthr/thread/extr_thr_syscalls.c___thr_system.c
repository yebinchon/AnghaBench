
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 int __libc_system (char const*) ;
 struct pthread* _get_curthread () ;
 int _thr_cancel_enter (struct pthread*) ;
 int _thr_cancel_leave (struct pthread*,int) ;

__attribute__((used)) static int
__thr_system(const char *string)
{
 struct pthread *curthread;
 int ret;

 curthread = _get_curthread();
 _thr_cancel_enter(curthread);
 ret = __libc_system(string);
 _thr_cancel_leave(curthread, 1);
 return (ret);
}
