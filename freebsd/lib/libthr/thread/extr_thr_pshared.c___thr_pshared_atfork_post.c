
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _thr_rwl_unlock (int *) ;
 int pshared_lock ;

void
__thr_pshared_atfork_post(void)
{

 _thr_rwl_unlock(&pshared_lock);
}
