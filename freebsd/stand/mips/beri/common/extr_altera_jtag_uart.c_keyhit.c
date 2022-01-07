
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ register_t ;


 scalar_t__ cp0_count_get () ;
 scalar_t__ uart_readable () ;

int
keyhit(int seconds)
{
 register_t stoptime;

 stoptime = cp0_count_get() + seconds * 100000000;
 do {
  if (uart_readable())
   return (1);
 } while (cp0_count_get() < stoptime);
 return (0);
}
