
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;


 int CLOCK_MONOTONIC ;
 int clock_gettime (int ,struct timespec*) ;
 int mach_absolute_time () ;

__attribute__((used)) static double
get_ticks (void)
{
 double res;




 struct timespec ts;
 clock_gettime (CLOCK_MONOTONIC, &ts);

 res = (double)ts.tv_sec + ts.tv_nsec / 1000000000.;


 return res;
}
