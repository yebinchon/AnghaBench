
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sem_t ;


 int _libc_sem_getvalue_compat (int *,int*) ;

int
_sem_getvalue_compat(sem_t * __restrict sem, int * __restrict sval)
{
 return _libc_sem_getvalue_compat(sem, sval);
}
