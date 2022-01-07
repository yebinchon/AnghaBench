
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct timeval {int tv_sec; } ;
struct comm_base {int dummy; } ;


 int comm_base_timept (struct comm_base*,int **,struct timeval**) ;
 int errno ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int log_err (char*,int ) ;
 int strerror (int ) ;

void ub_comm_base_now(struct comm_base* cb)
{





 time_t *tt;
 struct timeval *tv;
 comm_base_timept(cb, &tt, &tv);
 if(gettimeofday(tv, ((void*)0)) < 0) {
  log_err("gettimeofday: %s", strerror(errno));
 }
 *tt = tv->tv_sec;

}
