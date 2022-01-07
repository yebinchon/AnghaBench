
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 int TID (struct pthread*) ;
 struct pthread* _get_curthread () ;
 int _thr_check_init () ;

int
_thr_getthreadid_np(void)
{
 struct pthread *curthread;

 _thr_check_init();
 curthread = _get_curthread();
 return (TID(curthread));
}
