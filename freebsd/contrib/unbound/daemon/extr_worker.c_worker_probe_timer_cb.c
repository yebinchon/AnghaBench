
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {int probe_timer; } ;
struct worker {TYPE_1__ env; } ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;


 scalar_t__ autr_probe_timer (TYPE_1__*) ;
 int comm_timer_set (int ,struct timeval*) ;

void worker_probe_timer_cb(void* arg)
{
 struct worker* worker = (struct worker*)arg;
 struct timeval tv;

 tv.tv_sec = (time_t)autr_probe_timer(&worker->env);
 tv.tv_usec = 0;

 if(tv.tv_sec != 0)
  comm_timer_set(worker->env.probe_timer, &tv);
}
