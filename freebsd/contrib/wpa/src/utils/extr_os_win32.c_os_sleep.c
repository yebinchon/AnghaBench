
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int os_time_t ;


 int Sleep (int) ;

void os_sleep(os_time_t sec, os_time_t usec)
{
 if (sec)
  Sleep(sec * 1000);
 if (usec)
  Sleep(usec / 1000);
}
