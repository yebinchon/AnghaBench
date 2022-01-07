
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sem_t ;


 int _libc_sem_init_compat (int *,int,unsigned int) ;

int
_sem_init_compat(sem_t *sem, int pshared, unsigned int value)
{
 return _libc_sem_init_compat(sem, pshared, value);
}
