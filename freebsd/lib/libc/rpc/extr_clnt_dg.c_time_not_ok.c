
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
typedef int bool_t ;



__attribute__((used)) static bool_t
time_not_ok(struct timeval *t)
{
 return (t->tv_sec < -1 || t->tv_sec > 100000000 ||
  t->tv_usec < -1 || t->tv_usec > 1000000);
}
