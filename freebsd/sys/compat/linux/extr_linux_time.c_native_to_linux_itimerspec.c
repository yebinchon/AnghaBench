
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l_itimerspec {int it_value; int it_interval; } ;
struct itimerspec {int it_interval; } ;


 int native_to_linux_timespec (int *,int *) ;

int
native_to_linux_itimerspec(struct l_itimerspec *ltp, struct itimerspec *ntp)
{
 int error;

 error = native_to_linux_timespec(&ltp->it_interval, &ntp->it_interval);
 if (error == 0)
  error = native_to_linux_timespec(&ltp->it_value, &ntp->it_interval);
 return (error);
}
