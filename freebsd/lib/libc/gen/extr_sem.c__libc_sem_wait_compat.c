
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sem_t ;


 int _libc_sem_timedwait_compat (int *,int *) ;

int
_libc_sem_wait_compat(sem_t *sem)
{
 return _libc_sem_timedwait_compat(sem, ((void*)0));
}
