
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int sem_t ;


 int CLOCK_REALTIME ;
 int TIMER_ABSTIME ;
 int _sem_clockwait_np (int *,int ,int ,struct timespec const*,int *) ;

int
_sem_timedwait(sem_t * __restrict sem,
 const struct timespec * __restrict abstime)
{

 return (_sem_clockwait_np(sem, CLOCK_REALTIME, TIMER_ABSTIME, abstime,
     ((void*)0)));
}
