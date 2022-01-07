
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l_itimerspec {int it_value; int it_interval; } ;
struct itimerspec {int it_value; int it_interval; } ;


 int linux_to_native_timespec (int *,int *) ;

int
linux_to_native_itimerspec(struct itimerspec *ntp, struct l_itimerspec *ltp)
{
 int error;

 error = linux_to_native_timespec(&ntp->it_interval, &ltp->it_interval);
 if (error == 0)
  error = linux_to_native_timespec(&ntp->it_value, &ltp->it_value);
 return (error);
}
