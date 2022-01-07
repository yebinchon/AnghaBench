
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct worker {int thread_num; TYPE_2__* daemon; int cmd; } ;
struct TYPE_4__ {int num_ports; int * ports; TYPE_1__* cfg; } ;
struct TYPE_3__ {scalar_t__ so_reuseport; } ;


 int close_other_pipes (TYPE_2__*,int) ;
 int fatal_exit (char*) ;
 int log_thread_set (int*) ;
 int tube_close_write (int ) ;
 int ub_thread_blocksigs () ;
 int worker_init (struct worker*,TYPE_1__*,int ,int ) ;
 int worker_work (struct worker*) ;

__attribute__((used)) static void*
thread_start(void* arg)
{
 struct worker* worker = (struct worker*)arg;
 int port_num = 0;
 log_thread_set(&worker->thread_num);
 ub_thread_blocksigs();
 if(!worker_init(worker, worker->daemon->cfg,
   worker->daemon->ports[port_num], 0))
  fatal_exit("Could not initialize thread");

 worker_work(worker);
 return ((void*)0);
}
