
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 int Sleep (int) ;
 int sleep (int) ;
 scalar_t__ time (int *) ;

void
sleepUntilAfter(time_t t)
{
 while (t >= time(((void*)0)))



  sleep(1);

}
