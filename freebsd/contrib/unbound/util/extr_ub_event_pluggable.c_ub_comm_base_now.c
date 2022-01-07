
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct timeval {int tv_sec; } ;
struct comm_base {int dummy; } ;
struct TYPE_2__ {scalar_t__ magic; int * vmt; } ;


 scalar_t__ UB_EVENT_MAGIC ;
 TYPE_1__* comm_base_internal (struct comm_base*) ;
 int comm_base_timept (struct comm_base*,int **,struct timeval**) ;
 int default_event_base_vmt ;
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
