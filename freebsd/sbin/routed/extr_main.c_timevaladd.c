
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;



void
timevaladd(struct timeval *t1,
    struct timeval *t2)
{

 t1->tv_sec += t2->tv_sec;
 if ((t1->tv_usec += t2->tv_usec) >= 1000000) {
  t1->tv_sec++;
  t1->tv_usec -= 1000000;
 }
}
