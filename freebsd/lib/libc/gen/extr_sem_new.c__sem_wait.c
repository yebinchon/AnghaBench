
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sem_t ;


 int _sem_timedwait (int *,int *) ;

int
_sem_wait(sem_t *sem)
{

 return (_sem_timedwait(sem, ((void*)0)));
}
