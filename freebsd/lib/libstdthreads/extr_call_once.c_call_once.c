
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_once_t ;
typedef int once_flag ;


 int pthread_once (int *,void (*) ()) ;

void
call_once(once_flag *flag, void (*func)(void))
{

 (void)pthread_once((pthread_once_t *)flag, func);
}
