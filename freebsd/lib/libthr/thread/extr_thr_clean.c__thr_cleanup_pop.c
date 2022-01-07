
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __pthread_cleanup_pop_imp (int) ;

void
_thr_cleanup_pop(int execute)
{
 __pthread_cleanup_pop_imp(execute);
}
