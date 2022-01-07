
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ os_time_t ;


 int sleep (scalar_t__) ;
 int usleep (scalar_t__) ;

void os_sleep(os_time_t sec, os_time_t usec)
{
 if (sec)
  sleep(sec);
 if (usec)
  usleep(usec);
}
