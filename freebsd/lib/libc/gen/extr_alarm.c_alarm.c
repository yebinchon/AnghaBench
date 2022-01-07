
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int tv_sec; scalar_t__ tv_usec; } ;
struct itimerval {TYPE_1__ it_value; int it_interval; } ;


 int ITIMER_REAL ;
 scalar_t__ setitimer (int ,struct itimerval*,struct itimerval*) ;
 int timerclear (int *) ;

unsigned int
alarm(unsigned int secs)
{
 struct itimerval it, oitv;
 struct itimerval *itp = &it;

 timerclear(&itp->it_interval);
 itp->it_value.tv_sec = secs;
 itp->it_value.tv_usec = 0;
 if (setitimer(ITIMER_REAL, itp, &oitv) < 0)
  return (-1);
 if (oitv.it_value.tv_usec)
  oitv.it_value.tv_sec++;
 return (oitv.it_value.tv_sec);
}
