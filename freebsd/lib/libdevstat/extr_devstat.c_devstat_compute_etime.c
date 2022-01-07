
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bintime {long double sec; long double frac; } ;


 long double BINTIME_SCALE ;

long double
devstat_compute_etime(struct bintime *cur_time, struct bintime *prev_time)
{
 long double etime;

 etime = cur_time->sec;
 etime += cur_time->frac * BINTIME_SCALE;
 if (prev_time != ((void*)0)) {
  etime -= prev_time->sec;
  etime -= prev_time->frac * BINTIME_SCALE;
 }
 return(etime);
}
