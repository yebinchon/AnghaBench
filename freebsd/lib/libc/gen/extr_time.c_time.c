
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct timespec {int tv_sec; } ;


 int CLOCK_SECOND ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;

time_t
time(time_t *t)
{
 struct timespec tt;
 time_t retval;

 if (clock_gettime(CLOCK_SECOND, &tt) < 0)
  retval = -1;
 else
  retval = tt.tv_sec;
 if (t != ((void*)0))
  *t = retval;
 return (retval);
}
