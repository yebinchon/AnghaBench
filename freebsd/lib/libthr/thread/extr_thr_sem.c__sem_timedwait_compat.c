
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int sem_t ;


 int _libc_sem_timedwait_compat (int *,struct timespec const*) ;

int
_sem_timedwait_compat(sem_t * __restrict sem,
    const struct timespec * __restrict abstime)
{
 return _libc_sem_timedwait_compat(sem, abstime);
}
