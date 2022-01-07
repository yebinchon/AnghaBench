
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int clockid_t ;


 int CPUCLOCK_WHICH_PID ;
 scalar_t__ clock_getcpuclockid2 (int ,int ,int *) ;
 int errno ;

int
clock_getcpuclockid(pid_t pid, clockid_t *clock_id)
{
 if (clock_getcpuclockid2(pid, CPUCLOCK_WHICH_PID, clock_id))
  return (errno);
 return (0);
}
