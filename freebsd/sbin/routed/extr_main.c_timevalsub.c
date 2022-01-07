
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;



__attribute__((used)) static void
timevalsub(struct timeval *t1,
    struct timeval *t2,
    struct timeval *t3)
{
 t1->tv_sec = t2->tv_sec - t3->tv_sec;
 if ((t1->tv_usec = t2->tv_usec - t3->tv_usec) < 0) {
  t1->tv_sec--;
  t1->tv_usec += 1000000;
 }
}
