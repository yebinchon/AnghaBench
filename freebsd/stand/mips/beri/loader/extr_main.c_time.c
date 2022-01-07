
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int cp0_count_get () ;

time_t
time(time_t *tloc)
{


 return (cp0_count_get() / 100000000);
}
