
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 struct pthread* _get_curthread () ;
 int _thr_check_init () ;
 int testcancel (struct pthread*) ;

void
_Tthr_testcancel(void)
{
 struct pthread *curthread;

 _thr_check_init();
 curthread = _get_curthread();
 testcancel(curthread);
}
