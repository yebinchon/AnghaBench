
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;



void
ms_to_timeval(struct timeval *tv, int ms)
{
 if (ms < 0)
  ms = 0;
 tv->tv_sec = ms / 1000;
 tv->tv_usec = (ms % 1000) * 1000;
}
