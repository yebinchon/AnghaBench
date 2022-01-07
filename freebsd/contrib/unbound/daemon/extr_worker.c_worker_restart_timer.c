
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cfg; } ;
struct worker {int stat_timer; TYPE_2__ env; } ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_3__ {scalar_t__ stat_interval; } ;


 int comm_timer_set (int ,struct timeval*) ;

__attribute__((used)) static void
worker_restart_timer(struct worker* worker)
{
 if(worker->env.cfg->stat_interval > 0) {
  struct timeval tv;

  tv.tv_sec = worker->env.cfg->stat_interval;
  tv.tv_usec = 0;

  comm_timer_set(worker->stat_timer, &tv);
 }
}
