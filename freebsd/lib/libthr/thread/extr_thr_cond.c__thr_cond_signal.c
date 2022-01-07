
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_cond_t ;


 int cond_signal_common (int *) ;

int
_thr_cond_signal(pthread_cond_t * cond)
{

 return (cond_signal_common(cond));
}
