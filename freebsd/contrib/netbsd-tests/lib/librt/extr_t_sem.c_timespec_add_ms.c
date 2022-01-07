
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; int tv_sec; } ;



__attribute__((used)) static inline void
timespec_add_ms(struct timespec *ts, int ms)
{
 ts->tv_nsec += ms * 1000*1000;
 if (ts->tv_nsec > 1000*1000*1000) {
  ts->tv_sec++;
  ts->tv_nsec -= 1000*1000*1000;
 }
}
