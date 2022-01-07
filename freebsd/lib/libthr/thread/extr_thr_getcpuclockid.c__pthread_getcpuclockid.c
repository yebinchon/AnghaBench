
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pthread_t ;
typedef int clockid_t ;


 int CPUCLOCK_WHICH_TID ;
 int EINVAL ;
 int TID (int *) ;
 scalar_t__ clock_getcpuclockid2 (int ,int ,int *) ;
 int errno ;

int
_pthread_getcpuclockid(pthread_t pthread, clockid_t *clock_id)
{

 if (pthread == ((void*)0))
  return (EINVAL);

 if (clock_getcpuclockid2(TID(pthread), CPUCLOCK_WHICH_TID, clock_id))
  return (errno);
 return (0);
}
