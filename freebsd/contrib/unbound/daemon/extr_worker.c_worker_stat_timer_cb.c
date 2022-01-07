
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mesh; } ;
struct worker {TYPE_2__* daemon; TYPE_1__ env; int thread_num; int stats; } ;
struct TYPE_6__ {int stat_cumulative; scalar_t__ shm_enable; } ;
struct TYPE_5__ {TYPE_3__* cfg; } ;


 int mesh_stats (int ,char*) ;
 int server_stats_log (int *,struct worker*,int ) ;
 int shm_main_run (struct worker*) ;
 int worker_mem_report (struct worker*,int *) ;
 int worker_restart_timer (struct worker*) ;
 int worker_stats_clear (struct worker*) ;

void worker_stat_timer_cb(void* arg)
{
 struct worker* worker = (struct worker*)arg;
 server_stats_log(&worker->stats, worker, worker->thread_num);
 mesh_stats(worker->env.mesh, "mesh has");
 worker_mem_report(worker, ((void*)0));

 if (worker->daemon->cfg->shm_enable) {
  shm_main_run(worker);
 }
 if(!worker->daemon->cfg->stat_cumulative) {
  worker_stats_clear(worker);
 }

 worker_restart_timer(worker);
}
