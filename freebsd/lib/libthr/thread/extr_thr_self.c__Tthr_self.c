
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int _get_curthread () ;
 int _thr_check_init () ;

pthread_t
_Tthr_self(void)
{
 _thr_check_init();


 return (_get_curthread());
}
