
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int cpu_tick_frequency ;

__attribute__((used)) static uint64_t
cputick2usec(uint64_t tick)
{

 if (cpu_tick_frequency == 0)
  return (0);
 if (tick > 18446744073709551)
  return (tick / (cpu_tick_frequency / 1000000));
 else if (tick > 18446744073709)
  return ((tick * 1000) / (cpu_tick_frequency / 1000));
 else
  return ((tick * 1000000) / cpu_tick_frequency);
}
