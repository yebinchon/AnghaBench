
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct host_timeval {int tv_sec; scalar_t__ tv_usec; } ;


 int host_gettimeofday (struct host_timeval*,int *) ;

void
delay(int usecs)
{
 struct host_timeval tvi, tv;
 uint64_t ti, t;
 host_gettimeofday(&tvi, ((void*)0));
 ti = tvi.tv_sec*1000000 + tvi.tv_usec;
 do {
  host_gettimeofday(&tv, ((void*)0));
  t = tv.tv_sec*1000000 + tv.tv_usec;
 } while (t < ti + usecs);
}
