
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int ub_get_timer (int ) ;

time_t
time(time_t *tloc)
{
 int secs;

 secs = ub_get_timer(0) / 1000;
 if (tloc)
  *tloc = secs;

 return (secs);
}
