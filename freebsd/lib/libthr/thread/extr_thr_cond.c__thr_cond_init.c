
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_condattr_t ;
typedef int * pthread_cond_t ;


 int cond_init (int **,int const*) ;

int
_thr_cond_init(pthread_cond_t * __restrict cond,
    const pthread_condattr_t * __restrict cond_attr)
{

 *cond = ((void*)0);
 return (cond_init(cond, cond_attr));
}
